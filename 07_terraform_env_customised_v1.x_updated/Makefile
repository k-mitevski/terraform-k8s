MAKEFLAGS += --silent

.DEFAULT_GOAL := validate

terraform := $(shell command -v terraform 2> /dev/null)

ifndef terraform
    $(error "terraform is not available please install")
endif

## Initialize terraform remote state
init: 
	[ -d .terraform ] || ${terraform} $@

## Pass arguments through to terraform which require remote state
apply destroy graph plan output providers show validate: init
	${terraform} $@

## Pass arguments through to terraform which do not require remote state
get fmt version console:
	${terraform} $@

.PHONY: test
test:
	[ -f ./test/test.sh ] && ./test/test.sh || true

-include include.mk
