makefile_dir		:= $(abspath $(shell pwd))
export

test:
	go test -v