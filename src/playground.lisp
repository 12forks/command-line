(in-package :12forks)
(declaim (optimize (debug 3)))

(dex:get "http://httpbin.org/status/403")


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
