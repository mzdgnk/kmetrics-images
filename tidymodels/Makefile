IMAGE := mzdgnk/tidymodels
TAG := 3.6.0

build:
	docker build --no-cache -t ${IMAGE}:${TAG} .

push: build
	docker push ${IMAGE}:${TAG}
	docker tag ${IMAGE}:${TAG} ${IMAGE}:latest
	docker push ${IMAGE}:latest
