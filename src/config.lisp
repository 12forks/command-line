(in-package :12forks)

(defvar *config* nil)

(defconstant +config-help-messages+
  '(:token "Please set :token in .12forks file. It is required. It can be OAuth token or created at https://github.com/settings/tokens/new"))


(defun read-config (&optional (filename "./.12forks"))
  (with-open-file (f filename)
    (setf *config* (read f))
    (format nil "Config: ~A~%" *config*)))


(defun get-config (name)
  (let ((value (getf *config* name)))
    (if value
        value
        (error (getf +config-help-messages+
                     name
                     (format nil "Config value :~A is required.~%"
                             (string-downcase (symbol-name name))))))))

