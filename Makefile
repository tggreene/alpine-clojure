CLOJURE_VERSION=1.10.3
TAG=tggreene/alpine-clojure

.PHONY: push push-docker-hub

build: Dockerfile VERSION
	docker build -t $(TAG):$(CLOJURE_VERSION) .

push-docker-hub:
	docker push $(TAG):$(CLOJURE_VERSION)

push: build push-docker-hub
