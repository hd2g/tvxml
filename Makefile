VC ?= v

all: test

test:
	$(VC) test .

.PHONY:  all test
.SILENT: all test
