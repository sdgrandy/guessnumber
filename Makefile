makefile_dir		:= $(abspath $(shell pwd))
export

go_package  	:= $(shell cat go.mod | grep '^module' | sed 's/module //')
go_test 		:= go test -count=1 -v

test-dev:
	$(go_test) $(go_package)/exp/...
	# echo "dev test"
	# go test -v

test-qa:
	echo "qa test"
	go test -v

test-master:
	echo "master test"
	go test -v