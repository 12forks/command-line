(in-package :12forks)

(defvar *ignore-merges* t)


(defun get-commit-message (commit)
  (let* ((commit-data (getf commit :|commit|))
         (message (getf commit-data :|message|)))
    message))


(defun get-data (path &rest params)
  (let* ((full-path (apply #'format (append (list nil path) params)))
         (url (concatenate 'string "https://api.github.com" full-path))
         (headers `(("Authorization"
                     .
                     ,(concatenate 'string
                                   "token "
                                   (get-config :token))))))
    
    (let ((content (dex:get
                    url
                    :headers headers)))
      
      (jonathan:parse content))))


(defun get-nonmerged-commits (base fork)
  "Returns a list of strings with commit messages"

  (info "Getting nonmerged commits for ~A ~A" base fork)
  
  (let* ((data (get-data "/repos/~A/compare/~A:~A...~A:~A"
                         (repo-name base)
                         (repo-author base)
                         (repo-branch base)
                         (repo-author fork)
                         (repo-branch fork)))
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
  (let ((data (get-data "/repos/~A/branches" repo)))
    (mapcar (lambda (item)
              (concatenate 'string
                           repo
                           "@"
                           (getf item :|name|)))
            data)))


(defun get-repo-forks (repo)
  "Takes string like \"svetlyak40wt/foo\" and
returns a list of fork names strings like (list \"some-person/foo\" \"other/foo\")

TODO: add pagination"
  
  (let ((data (get-data "/repos/~A/forks" repo)))
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
        :commits (get-nonmerged-commits base branch-full-name)))


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


(defun analyze-fork (base-branches fork-name)
  "Accepts a list of base's branches like:

     '(\"svetlyak40wt/django-fields@master\" \"svetlyak40wt/django-fields@gh-pages\")

   Returns a plist of fork data like
   '(:branches <branches-data> :name <fork-name>)

   Key :branches contains only branches having non merged
   to base commits."
  (info "Analyzing fork ~A" fork-name)
  (let* ((master-branch (find-branch-by-name base-branches "master"))
         (branche-names (get-repo-branch-names fork-name))
         (all-branches (progn
                           (info "  It has ~A branches" branche-names)
                          (lparallel:pmapcar (lambda (branch-full-name)
                                    (analyze-branch
                                     (or (find-branch-by-name base-branches (repo-branch branch-full-name))
                                         master-branch)
                                     branch-full-name))
                                  branche-names)))
         (good-branches (remove-if-not
                         (lambda (branch)
                           (getf branch :commits))
                         all-branches)))
    (list :name fork-name
          :branches good-branches)))


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
