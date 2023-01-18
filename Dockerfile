FROM quay.io/eclipse/che-java8-maven:7.37.2

MAINTAINER test user

USER root

COPY src /home/app/src
COPY pom.xml /home/app

RUN mvn -f /home/app/pom.xml clean package

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/home/app/target/spring-boot-hello-world-0.0.1-SNAPSHOT.jar"]
