.PHONY: build run

build:
	sudo docker build . -t sky360/devbox-indi:latest

run: build
	sudo docker run -it --net=host --device /dev/video0 sky360/devbox-indi
