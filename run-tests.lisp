(load "example-common-lisp-project.asd")

(load "example-common-lisp-project-tests.asd")

(ql:quickload "example-common-lisp-project-tests")

(in-package #:example-common-lisp-project-tests)

(uiop:quit (if (run-all-tests) 0 1))
