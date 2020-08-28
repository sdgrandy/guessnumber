makefile_dir		:= $(abspath $(shell pwd))
export

go_package  	:= $(shell cat go.mod | grep '^module' | sed 's/module //')
go_test 		:= go test -count=1 -v

test-dev:
	echo "dev test"
	$(go_test) $(go_package)/exp/...
	# echo "dev test"
	# go test -v

test-qa:
	echo "qa test"
	$(go_test) $(go_package)/exp/...

test-master:
	echo "master test"
	$(go_test) $(go_package)/exp/...