# syntax = docker/dockerfile:1.2

# Build stage
FROM maven:3.8.4-openjdk-17 AS build
COPY . .
RUN mvn clean
RUN mvn spring-boot:repackage -DskipTests

# Package stage
FROM openjdk:17-jdk-slim
COPY --from=build /app/target/Servicio3_API-0.0.1-SNAPSHOT.jar Servicio3_API.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "Servicio3_API.jar"]
ENTRYPOINT ["java","-classpath","Servicio3_API.jar","com.servicio3.api.Servicio3ApiApplication"]

