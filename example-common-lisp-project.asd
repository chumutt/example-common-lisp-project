(in-package :asdf-user)

(defsystem "example-common-lisp-project"
  :author "author-name <email@email.arpa>"
  :version "0.0.1"
  :license "GNU GPL-3.0"
  :description "an example common lisp project"
  :homepage ""
  :bug-tracker ""
  :source-control (:git "")

  ;; Dependencies.
  :depends-on ()

  ;; Project stucture.
  :serial T
  :components ((:module "src"
                        :serial T
                        :components ((:file "packages")
                                     (:file "example-common-lisp-project"))))

  ;; Build a binary:
  ;; don't change this line.
  :build-operation "program-op"
  ;; binary name: adapt.
  :build-pathname "example-common-lisp-project"
  ;; entry point: here "main" is an exported symbol. Otherwise, use a double ::
  :entry-point "example-common-lisp-project:main")
