IMAGE := mzdgnk/tidymodels
TAG := 3.6.1

build:
	docker pull mzdgnk/mlwr:3.6.0
	docker build --no-cache -t ${IMAGE}:${TAG} .
	docker build --no-cache -t ${IMAGE}:${SAMPLE_TAG} -f Dockerfile.sample .

push: build
	docker push ${IMAGE}:${TAG}
	docker tag ${IMAGE}:${TAG} ${IMAGE}:latest
	docker push ${IMAGE}:latest
