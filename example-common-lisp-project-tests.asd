(in-package :asdf-user)

(defsystem "example-common-lisp-project-tests"
  :description "Test suite for the example-common-lisp-project system"
  :author "author-name <email@email.arpa>"
  :version "0.0.1"
  :depends-on (:example-common-lisp-project
               :fiveam)
  :license "GNU GPL-3.0"
  :serial T
  :components ((:module "tests"
                        :serial T
                        :components ((:file "packages")
                                     (:file "test-example-common-lisp-project"))))

  ;; The following would not return the right exit code on error, but still 0.
  ;; :perform (test-op (op _) (symbol-call :fiveam :run-all-tests))
  )
