IMAGE:=hub.cs.upb.de/enexa/images/enexa-utils
TAG:=$(IMAGE):1.0.0
TAG2:=$(IMAGE):1.0
TAG3:=$(IMAGE):1

build:
	docker build --tag $(TAG) .
	docker image tag $(TAG) $(TAG2)
	docker image tag $(TAG) $(TAG3)
	docker build -t enexa-test-service -f test-service.Dockerfile .

push:
	docker push $(TAG)
	docker push $(TAG2)
	docker push $(TAG3)
