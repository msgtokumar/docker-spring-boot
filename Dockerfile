FROM openjdk:8
ADD target/docker-spring-boot.jar.jar docker-spring-boot.jar

ADD entrypoint.sh 
RUN chmod 755 entrypoint.sh && chown vagrant:vagrant entrypoint.sh
USER vagrant

ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 8085
ENTRYPOINT ["java","-jar","docker-spring-boot.jar"]