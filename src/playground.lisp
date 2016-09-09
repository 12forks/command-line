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


