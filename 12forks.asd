(asdf:defsystem :12forks
                :description "Command line utility to build report on nonmerged forks."
                :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
                :entry-point "12forks.cli:main"
                :depends-on (#:dexador
                             #:jonathan
                             #:net.didierverna.clon
                             #:lparallel)
                :components ((:module src
                              :serial t
                              :components ((:file "packages")
                                           (:file "conditions")
                                           (:file "utils")
                                           (:file "config")
                                           (:file "logging")
                                           (:file "core")))))
