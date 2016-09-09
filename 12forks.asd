(asdf:defsystem :12forks
                :description "Command line utility to build report on nonmerged forks."
                :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
                :entry-point "12forks.cli:main"
                :depends-on (
                             #:alexandria ;; a set us useful utilities
                             #:dexador    ;; fast http library
                             #:jonathan   ;; fast json parser to process responses from GitHub
                             #:net.didierverna.clon ;; for command-line arguments processing
                             #:cl-ppcre   ;; to parse "next" links from headers
                             #:local-time ;; to check when wakeup after the rate limit
                             #:lparallel  ;; to parallelize processing
                             #:log4cl     ;; logging
                )
                :components ((:module src
                              :serial t
                              :components ((:file "packages")
                                           (:file "conditions")
                                           (:file "utils")
                                           (:file "config")
                                           (:file "logging")
                                           (:file "core")))))
