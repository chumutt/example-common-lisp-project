LISP ?= ros dynamic-space-size=8000 -Q run

all: test

run:
	rlwrap $(LISP) --load run.lisp

build:
	$(LISP)	--non-interactive \
		--load example-common-lisp-project.asd \
		--eval '(ql:quickload :example-common-lisp-project)' \
		--eval '(asdf:make :example-common-lisp-project)'

test:
	$(LISP) --non-interactive \
		--load run-tests.lisp
