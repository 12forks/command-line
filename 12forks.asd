(asdf:defsystem :12forks
                :description "Command line utility to build report on nonmerged forks."
                :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
                :entry-point "12forks.cli:main"
                :depends-on (#:drakma
                             #:babel
                             #:jonathan
                             #:net.didierverna.clon)
                :components ((:module src
                              :serial t
                              :components ((:file "packages")
                                           (:file "utils")
                                           (:file "config")
                                           (:file "logging")
                                           (:file "core")))))
