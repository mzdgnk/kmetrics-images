IMAGE := mzdgnk/tidymodels
TAG := 3.6.0

build:
	docker pull mzdgnk/mlwr:${TAG}
	docker build --no-cache -t ${IMAGE}:${TAG} .

push:
	docker push ${IMAGE}:${TAG}
