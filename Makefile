NAME = kalamangga/java-openjdk
VERSION = 8

.PHONY: all build tag_latest release

all: build

build:
	docker build -t $(NAME):$(VERSION) --rm image

tag_latest:
	docker tag $(NAME):$(VERSION) $(NAME):latest

release: tag_latest
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then echo "Build image first."; false; fi
	docker push $(NAME):$(VERSION)
	docker push $(NAME):latest
