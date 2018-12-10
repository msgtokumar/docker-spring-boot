GIT_REPO := https://github.com/DuoDuoMelb/java-maven-junit-helloworld.git
DIR := "dev"
OS := $(shell uname)

build:
	#./scripts/my-important-task.sh my-parameter
	@echo "argument build."
	sh 'docker build -f Dockerfile -t docker-spring-boot .'
	#packer validate base_image.json
	#packer build base_image.json

provision:
	@echo    "Clean starts."
	sh 'docker run -p 8085:8085 docker-spring-boot'
	#mvn  test

clean:
	@echo    "Clean starts."
	#mvn  clean
