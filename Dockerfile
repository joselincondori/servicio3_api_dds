# syntax = docker/dockerfile:1.2

# Build stage
FROM maven:3.8.4-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean spring-boot:repackage -DskipTests

# Package stage
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/Servicio3_API-0.0.1-SNAPSHOT.jar Servicio3_API.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "Servicio3_API.jar"]