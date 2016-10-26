(defpackage :12forks
  (:use :cl)
  (:import-from #:alexandria
                #:starts-with-subseq)
  (:export #:*version*))

(in-package :12forks)

(defparameter *version* "0.4.0")
