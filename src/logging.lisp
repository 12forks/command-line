(in-package :12forks)


(defun info (message &rest args)
  (let ((formatted-message (apply #'format (append (list nil message) args))))
    (format *error-output* "~A~%" formatted-message)))
