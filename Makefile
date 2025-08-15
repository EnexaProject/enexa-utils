IMAGE:=hub.cs.upb.de/enexa/images/enexa-utils
TAG:=$(IMAGE):1.0.0-debug2
TAG2:=$(IMAGE):1.0-debug2
TAG3:=$(IMAGE):1-debug2

build:
	docker build --tag $(TAG) .
	docker image tag $(TAG) $(TAG2)
	docker image tag $(TAG) $(TAG3)
	docker build -t enexa-test-service -f test-service.Dockerfile .

push:
	docker push $(TAG)
	docker push $(TAG2)
	docker push $(TAG3)
