;; (eval-when (:compile-toplevel :load-toplevel)
;;   (ql:quickload 'puri))

;; (defpackage :coleslaw-gh-pages
;;   (:use :cl)
;;   (:import-from :puri #:parse-uri #:uri-host)
;;   (:import-from :coleslaw #:*config*
;;                           #:deploy
;;                           #:deploy-dir
;;                           #:domain
;;                           #:rel-path)
;;   (:export #:enable))

;; (in-package :coleslaw-gh-pages)

;; (defvar *cname* nil
;;   "The domain CNAME for github to serve pages from.")

;; (defmethod deploy :after (staging)
;;   (let ((blog (truename (rel-path (deploy-dir *config*) ".curr"))))
;;     (delete-file (rel-path blog "index.html"))
;;     (cl-fad:copy-file (rel-path blog "1.html") (rel-path blog "index.html"))
;;     (with-open-file (out (rel-path blog "CNAME")
;;                      :direction :output
;;                      :if-exists :supersede
;;                      :if-does-not-exist :create)
;;       (format out "~A~%" *cname*))))

;; (defun enable (&key cname)
;;   (typecase cname
;;     (string (setf *cname* cname))
;;     (t (setf *cname* (uri-host (parse-uri (domain *config*)))))
;;     (otherwise (error "Not a valid CNAME: ~A" cname))))


;; site-static/generated/3683983526

(defpackage :coleslaw-gh-pages
  (:use :cl)
  (:import-from :coleslaw #:*config*
                          #:rel-path
                          #:fmt
                          #:run-program
                          #:domain
                          #:with-current-directory
                          #:update-symlink)
  (:export #:enable))

(in-package :coleslaw-gh-pages)


(defvar *cname* nil
  "The domain CNAME for github to serve pages from.")


(defvar *index-page* nil
  "Name of the page to make an \"index\". For example: \"about.html\".")


(defun run (program &rest args)
  (inferior-shell:run (fmt program args)
                      :show t
                      :output :interactive
                      :error-output :interactive))

(defmethod coleslaw:deploy (staging)
  (format t "Deploying to GitHub~%")

  (run "git checkout master")
  (run "git branch | grep gh-pages && git branch -D gh-pages || true")
  (run "git checkout --orphan gh-pages")
  (run "rm -fr *")
  (run "git rm -rf .")
  (run "mv ~a* ~a" staging (uiop:getcwd))

  (when *cname*
    (run "echo ~a > CNAME" *cname*))
  
  (when *index-page*
    (run "rm index.html")
    (run "cp ~a index.html" *index-page*))

  (run "git add *")
  (run "git commit -m 'Site updated'")
  (run "git push --force origin gh-pages")
  (run "git checkout master"))


(defun enable (&key cname index-page)
  (setf *cname* (if cname
                    cname
                    (domain *config*)))

  (setf *index-page* index-page))
