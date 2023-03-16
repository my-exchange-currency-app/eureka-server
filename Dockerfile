FROM openjdk:8-jdk-alpine
LABEL maintainer="ahmedbaz1024"
WORKDIR /usr/local/bin/
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} eureka-server.jar
EXPOSE 8761
CMD ["java","-jar","eureka-server.jar"]
