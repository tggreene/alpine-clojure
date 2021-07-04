CLOJURE_VERSION=1.10.3
CLJ_TAG=tggreene/alpine-clojure
CLJS_TAG=tggreene/alpine-clojurescript

.PHONY: build build-clj build-cljs push push-docker-hub

build-clj: Dockerfile.clojure
	docker build -f Dockerfile.clojure -t $(CLJ_TAG):$(CLOJURE_VERSION) .

build-cljs: Dockerfile.clojurescript
	docker build -f Dockerfile.clojurescript -t $(CLJS_TAG):$(CLOJURE_VERSION) .

build: build-clj build-cljs

push-docker-hub:
	docker push $(CLJS_TAG):$(CLOJURE_VERSION)
	docker push $(CLJS_TAG):$(CLOJURE_VERSION)

push: build push-docker-hub
