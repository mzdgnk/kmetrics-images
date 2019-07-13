IMAGE := mzdgnk/tidymodels
TAG := 3.6.0

build:
	docker pull mzdgnk/mlwr:${TAG}
	docker build --no-cache -t ${IMAGE}:${TAG} .
	docker build --no-cache -t ${IMAGE}:${TAG}-sample -f Dockerfile.sample .

push: build
	docker push ${IMAGE}:${TAG}
	docker push ${IMAGE}:${TAG}-sample
