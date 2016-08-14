(in-package :12forks)

(defvar *config* nil)

(defvar +config-signals+
  '(:token missing-token))


(defun get-config (name)
  (let ((value (getf *config* name)))
    (if value
        value
        (error (if (getf +config-signals+ name)
                   (getf +config-signals+ name)
                   'missing-option)
               :name name))))

