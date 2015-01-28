all: test

test:
	nim c -r test/*_test.nim

.PHONY: all test
