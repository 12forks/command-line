(in-package :12forks)


(define-condition missing-option (error)
  ((name :initarg :name
         :reader option-name))
  (:report (lambda (condition stream)
             (format stream "Option \"~A\" is required."
                     (string-downcase (option-name condition))))))


(define-condition missing-token (missing-option)
  ()
  (:report "Please, provide either --token option or TOKEN env variable. It is mandatory. It can be OAuth token or created at https://github.com/settings/tokens/new"))
