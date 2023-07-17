build:
	docker build -t enexa-utils:1 -t enexa-utils:1.0 -t enexa-utils:1.0.0 .
	docker build -t enexa-test-service -f test-service.Dockerfile .
