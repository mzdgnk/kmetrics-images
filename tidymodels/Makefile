IMAGE := mzdgnk/tidymodels
TAG := latest

build:
	docker pull mzdgnk/mlwr:${TAG}
	docker build --no-cache -t ${IMAGE}:${TAG} .

push: build
	docker push ${IMAGE}:${TAG}
