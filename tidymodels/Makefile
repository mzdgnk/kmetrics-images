IMAGE := mzdgnk/tidymodels
TAG := 3.6.0
SAMPLE_TAG := ${TAG}-sample

build:
	docker pull mzdgnk/mlwr:3.6.0
	docker build --no-cache -t ${IMAGE}:${TAG} .
	docker build --no-cache -t ${IMAGE}:${SAMPLE_TAG} -f Dockerfile.sample .

push: build
	docker push ${IMAGE}:${TAG}
	docker tag ${IMAGE}:${TAG} ${IMAGE}:latest
	docker push ${IMAGE}:latest

	docker push ${IMAGE}:${SAMPLE_TAG}
	docker tag ${IMAGE}:${SAMPLE_TAG} ${IMAGE}:latest-sample
	docker push ${IMAGE}:latest-sample
