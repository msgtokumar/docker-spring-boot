FROM openjdk:8
ADD target/docker-spring-boot.jar docker-spring-boot.jar
RUN useradd -ms /bin/bash cicduser
ADD entrypoint.sh entrypoint.sh 
ENTRYPOINT ["./entrypoint.sh"]