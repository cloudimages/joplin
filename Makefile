all: build
IMAGE = devcontainers1/joplin
VERSION = latest

.PHONY: build
build:
	docker buildx build --platform linux/amd64,linux/arm64 $(BUILD_ARGS) -t $(IMAGE):$(VERSION) --push .

.PHONY: push
push:
	docker push $(IMAGE):$(VERSION)
