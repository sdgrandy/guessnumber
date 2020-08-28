makefile_dir		:= $(abspath $(shell pwd))
export

go_package  	:= $(shell cat go.mod | grep '^module' | sed 's/module //')
go_test 		:= go test -count=1 -v
docker_compose	:= ENVIRONMENT=$(ENVIRONMENT) docker-compose
docker_service := guessnumber

docker-build:
	$(docker_compose) build --no-cache $(docker_service)

docker-up:
	$(docker_compose) up $(docker_service)

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