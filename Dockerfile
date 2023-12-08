# syntax = docker/dockerfile:1.2
#
# Build stage
#
FROM maven:3.8.4-openjdk-17 AS build
COPY . .
RUN mvn clean
RUN mvn package assembly:single -DskipTests
#
# Package stage
#
FROM openjdk:17-jdk-slim
COPY target/Servicio3_API-0.0.1-SNAPSHOT-jar-with-dependencies.jar Servicio3_API.jar

# ENV PORT=8080
EXPOSE 8081
ENTRYPOINT ["java","-classpath","Servicio3_API.jar","com.servicio3.api.Servicio3ApiApplication"]
