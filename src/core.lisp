(in-package :12forks)

(defvar *ignore-merges* t)
(defvar *debug* nil)
(defvar *github-ratelimit-remaining*)
(defvar *fetch-nonmerged-commits* t)
(defvar *only-new-branches-and-master* t)
(defvar *api-hits* 0)


(defun get-commit-message (commit)
  (let* ((commit-data (getf commit :|commit|))
         (message (getf commit-data :|message|)))
    message))


(defun sleep-and-retry-if-rate-limited (cond)
  "Respect GitHub's rate limits and stop after we hit the limit.
  
   https://developer.github.com/v3/#abuse-rate-limits
   https://developer.github.com/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits
  "
  (let* ((headers (dex:response-headers cond))
         (ratelimit-reset (gethash "x-ratelimit-reset" headers))
         (now (local-time:timestamp-to-unix (local-time:now))))
    (when ratelimit-reset
      (let ((seconds-to-sleep (- ratelimit-reset now)))
        ;; (princ (alexandria:hash-table-alist headers))
        ;; (break)
        (when (> seconds-to-sleep 0)
          (log:warn "Ratelimited, will sleep ~A seconds up to ~A~%"
                    seconds-to-sleep
                    (local-time:format-timestring
                     nil
                     (local-time:unix-to-timestamp ratelimit-reset)
                     :format local-time:+asctime-format+))
          (sleep seconds-to-sleep))
        (dex:retry-request cond)))))


(defun get-data (path &key params items verbose)
  (log:debug "Fetching data from ~A with params ~A" path params)

  (setf *api-hits* (1+ *api-hits*))
  
  (let* ((full-path (apply #'format (append (list nil path) params)))
         (url (if (starts-with-subseq "/" path)
                  ;; use either relative uri
                  (concatenate 'string "https://api.github.com" full-path)
                  ;; or full url with schema
                  path))
         (headers `(("Authorization"
                     .
                     ,(concatenate 'string
                                   "token "
                                   (get-config :token)))
                    ("User-Agent" . ,(format nil "12forks/~A (http://12forks.com)" *version*)))))
    
    (multiple-value-bind (content status-code response-headers)
        (handler-bind
            ((dex:http-request-forbidden #'sleep-and-retry-if-rate-limited)
             (dex:http-request-not-found #'dex:ignore-and-continue))
          (dex:get url :headers headers :verbose verbose))

      (setf *github-ratelimit-remaining* (gethash "x-ratelimit-remaining" response-headers))
      
      (if *debug*
          (log:info "GitHub's ratelimit remaining is ~A~%"
                    *github-ratelimit-remaining*)
        
          (when (< *github-ratelimit-remaining* 100)
            (log:warn "GitHub's ratelimit remaining is ~A~%"
                      *github-ratelimit-remaining*)))
      
      
      ;; (princ (alexandria:hash-table-alist response-headers))
      ;; (break)

      ;; we ignore 404 error and just return nil as if
      ;; no data were fetched
      (when (not (= status-code 404))
        (let* ((decoded (jonathan:parse content))
               (links (gethash "link" response-headers))
               (next-link (get-next-link links)))
        
          (if next-link
              ;; iterate over pages
              (get-data next-link :items (append decoded items))
              ;; or end recursion
              (if (listp decoded)
                  (append decoded items)
                  decoded)))))))


(defun get-nonmerged-commits (base fork)
  "Returns a list of strings with commit messages"

  (log:info "Getting nonmerged commits for ~A ~A" base fork)
  
  (let* ((data (get-data "/repos/~A/compare/~A:~A...~A:~A?per_page=100"
                         :params (list
                                  (repo-name base)
                                  (repo-author base)
                                  (repo-branch base)
                                  (repo-author fork)
                                  (repo-branch fork))))
         (commits (getf data :|commits|))
         (filtered-commits (if *ignore-merges*
                               (remove-if #'merge-commit-p commits)
                               commits))
         (messages (mapcar #'get-commit-message filtered-commits)))
    messages))


(defun get-repo-branch-names (repo)
  "Takes string like 'svetlyak40wt/foo' and
returns a list of strings like 'svetlyak40wt/foo@master',
'svetlyak40wt/foo@some-feature', etc."
  (let ((data (get-data "/repos/~A/branches?per_page=100"
                        :params (list repo))))
    (mapcar (lambda (item)
              (concatenate 'string
                           repo
                           "@"
                           (getf item :|name|)))
            data)))


(defun get-repo-forks (repo)
  "Takes string like \"svetlyak40wt/foo\" and
returns a list of fork names strings like (list \"some-person/foo\" \"other/foo\")
"
  
  (let ((data (get-data "/repos/~A/forks?per_page=100"
                        :params (list repo))))
    (mapcar (lambda (item)
              (getf item :|full_name|))
            data)))


(defun print-commit (message)
  "Prints to stdout as a reStructured document's secion.
First line becomes a header, rest – a body."
  (format t "~A~%~%"
          (beautify-sentence message)))


(defun analyze-branch (base branch-full-name)
  "Fetches from a github commit messages of commits
   Returns a plist like that:

   (list :name <short-name-of-the-branch>
         :commits (list <commits))"
  
  (list :name (repo-branch branch-full-name)
        :commits (when *fetch-nonmerged-commits*
                   (get-nonmerged-commits base branch-full-name))))


(defun print-branch (branch)
  "Fetches from a github commit messages of commits

Then each commit message is printed to stdout as a reStructured
document's secion"
  
  (let ((commits (getf branch :commits))
        (branch-name (getf branch :name)))
    (format t "~A~%~A~%~%"
            branch-name
            (make-underline #\- branch-name))
    (mapc #'print-commit commits)
    nil))


(defun get-new-branches (base-branches fork-branches)
  "Returns a list of branches which were added in the fork"
  (remove-if (lambda (item) (member item base-branches :test #'equal))
             fork-branches))


(defun analyze-fork (base-branches fork-name)
  "Accepts a list of base's branches like:

     '(\"svetlyak40wt/django-fields@master\" \"svetlyak40wt/django-fields@gh-pages\")

   Returns a plist of fork data like
   '(:branches <branches-data> :name <fork-name>)

   Key :branches contains only branches having non merged
   to base commits."
  (log:info "Analyzing fork ~A" fork-name)
  (let* ((master-branch (find-branch-by-name base-branches "master"))
         (all-branch-names (get-repo-branch-names fork-name))
         ;; these are branch names which are absent in base repository
         (new-branches (get-new-branches base-branches all-branch-names))
         (branch-names (if *only-new-branches-and-master*
                           (cons "master" new-branches)
                           all-branch-names))
         (all-branches (progn
                           (log:info "It has ~A branches" branch-names)
                          (lparallel:pmapcar (lambda (branch-full-name)
                                    (analyze-branch
                                     (or (find-branch-by-name base-branches (repo-branch branch-full-name))
                                         master-branch)
                                     branch-full-name))
                                  branch-names)))
         (good-branches (remove-if-not
                         (lambda (branch)
                           (getf branch :commits))
                         all-branches)))
    (list :name fork-name
          :branches good-branches
          :new-branches new-branches)))


(defun print-fork (fork)
  (let ((branches (getf fork :branches))
        (name (getf fork :name)))
    (format t "~A~%~A~%~%" name (make-underline #\= name))
    (mapc (lambda (branch)
            (print-branch branch))
          branches)
    nil))



(defun analyze-repo (repo)
  "Returns a plist of fork which have unmerged commits:
   (list :name <repo-name> :forks <forks>"

  (log:info "Analyzing repo ~A" repo)
  (setf *api-hits* 0)
  
  (let* ((fork-names (get-repo-forks repo))
         (repo-branches (get-repo-branch-names repo))
         (all-forks (lparallel:pmapcar (lambda (fork-name)
                          (analyze-fork repo-branches fork-name))
                            fork-names))
         (good-forks (remove-if-not
                      (lambda (fork)
                        (getf fork :branches))
                      all-forks)))
    (list :name repo
          :forks good-forks
          :total-forks-count (length all-forks)
          :good-forks-count  (length good-forks))))


(defun print-repo (repo)
  "Prints repo data in reStructured text format"
  (let* ((forks (getf repo :forks))
         (repo-name (getf repo :name))
         (underline (make-underline #\= repo-name)))
    
    (format t "~A~%~A~%~A~%~%"
            underline
            repo-name
            underline)
    
    (if forks
        (progn (mapc (lambda (fork)
                       (print-fork fork))
                     forks)
               nil)
        (format t "No forks"))))
