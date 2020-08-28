makefile_dir		:= $(abspath $(shell pwd))
export

test-dev:
	echo "dev test"
	go test -v

test-qa:
	echo "qa test"
	go test -v

test-master:
	echo "master test"
	go test -v