(defpackage :12forks.playground
  (:use :cl))
(in-package :12forks.playground)
(declaim (optimize (debug 3)))

(push (probe-file ".") asdf:*central-registry*)
(ql:quickload "12forks")

(log:config :sane2 :daily "12forks.log" :backup nil)
(log:config :sane2 :debug)
(log:config :reset)

(log:debug "STARTED3")

(dex:get "http://httpbin.org/status/403")

(setf (getf 12forks::*config* :token) (uiop:getenv "TOKEN"))

(defvar *result*)

(let (12forks::*fetch-nonmerged-commits*)
  (setf *result* (12forks::analyze-repo "pallets/flask")))

(format t "~A~%" 12forks::*api-hits*)



;; какой-то старый код по проверке обработки исключений от dexador
(defun connection-keep-alive-p (connection-header)
  (and keep-alive
       (or (and (= (the single-float version) 1.0)
                (equalp connection-header "keep-alive"))
           (not (equalp connection-header "close")))))


(defun get-body (body headers &key (keep-alive t) transfer-encoding-p force-binary)
  (break)
  (dexador.backend.usocket::convert-body body
                (gethash "content-encoding" headers)
                (gethash "content-type" headers)
                (gethash "content-length" headers)
                transfer-encoding-p
                force-binary
                keep-alive))


(defun retry (cond)
  (format t "COND: ~A~%" cond)

  (format t "RETRY: ~A~%" (get-body (dex:response-body cond)
                                    (dex:response-headers cond)))
  (dex:retry-request 1))


(handler-bind ((dex:http-request-failed #'retry))
  (dex:get "http://httpbin.org/status/418" :verbose 1))




(handler-bind ((dex:http-request-forbidden #'retry))
  (dex:get "http://httpbin.org/status/403" :verbose 1))


(handler-bind ((usocket:ns-host-not-found-error (lambda (cond) (break))))
  (dex:get "http://httpbin.org/status/403"))


;; example for Fukamachi

(defun handle-condition (cond)
  (format t "Response Headers Should Not Be Nil: ~A~%" (dex:response-headers cond))
  (dex:ignore-and-continue cond))


(handler-bind ((dex:http-request-failed #'handle-condition))
  (dex:get "http://httpbin.org/status/418" :verbose 1))


;; тест прогресс-мапа

(defun sleep-foo (&optional (time 1))
  ;; (format t "Sleeping ~A seconds.~%" time)
  (sleep time))


(defun incrementer (func var)
  (lambda (&rest args)
    (apply func args)
    (format t ".")
    (setf (symbol-value var) (1+ (symbol-value var)))))



;;; проверяю работу с lparallel

(defun worker (worker_id)
  (dotimes (iteration 1000)
    (format t "Worker: ~A, iteration: ~A~%"
            worker_id iteration)
    (if (< (random 100) 10)
        (dex:get "http://httpbin.org/status/403")
        (dex:get "http://httpbin.org/status/200"))

    (sleep 1)))

(lparallel:pmapcar #'worker '(1 2 3 4))


(in-package :test-logger)

(defun view (request)
  (a-log:when-log-message-generated
      ((a-log:push-into-message :param1 "first" :param2 "second"))
    (testlog.info "Processing request" :request request)))


(defun dispatch (request)
  (a-log:when-log-message-generated
      ((a-log:push-into-message :request-id 123))
    (view request)))


;; ;; собираем цепочку логгеров
;; (with-small-dynamic-extent-vector
;;     (cats num-cats (- end-depth start-depth))
;;   (declare (ignore num-cats))
;;   (let ((cnt 0))
;;     (declare (type fixnum cnt)) 
;;     (loop with lgr = logger
;;        for i fixnum downfrom (1- (logger-depth logger))
;;        to 0
;;        do (progn
;;             ;; (format t "here1 i = ~d logger = ~s file-idx = ~s ~%" i lgr file-idx)
;;             (unless (< (1- start-depth) i (1- end-depth))
;;               (setf (svref cats cnt) lgr)
;;               (incf cnt))
;;             (setf lgr (%logger-parent lgr)))) 
;;     (format-categories stream fmt-info cats cnt
;;                        (or sep (%logger-category-separator logger)))))

;; ;; пишем категории массива логгеров куда-то
;; (loop for i fixnum from start to end
;;    as logger = (svref cats (- num-cats i 1))
;;    ;; do (format t "doing logger ~s ~s ~s ~%" logger (logger-name logger) (%logger-name-start-pos logger))
;; do (write-string-or-skip (%logger-category logger)
;;                          (%logger-name-start-pos logger)
;;                          (length (%logger-category logger))
;;                          case)
;; if (/= i end) 
;; do (write-string-or-skip separator 0
;;                          (length separator) nil))



;; dlambda


(defun equidimensional (a)
  (or (< (array-rank a) 2)
      (apply #'= (array-dimensions a))))

(deftype square-matrix (&optional type size)
  `(and (array ,type (,size ,size))
        (satisfies equidimensional)))

;; квадратная матрица 2x2
(defparameter *a1* (make-array '(2 2) :initial-contents '((1 2) (3 4))))
;; матрица 2x3
(defparameter *a2* (make-array '(2 3) :initial-contents '((1 2 3) (4 5 6))))

(defun square-p (array)
  ;; сравниваем тип данной нам матрицы с квадратной
  (typecase array
    (square-matrix t)
    (t nil)))

(square-p *a1*) => T
(square-p *a2*) => NIL

(defun process-square (matrix)
  (declare (type square-matrix matrix)
           (ignorable matrix))
  (print "Processing square matrix"))

(process-square *a1*) => Prints "Processing square matrix"
(process-square *a2*) => Raises condition
;; The value
;;   #2A((1 2 3) (4 5 6))
;; is not of type
;;   (AND (ARRAY * (* *))
;;        (SATISFIES CL-USER::EQUIDIMENSIONAL))

