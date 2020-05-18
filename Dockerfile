#FROM maven:maven:3-alpine
FROM maven:3.6.0-jdk-11-slim AS build
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn clean install -DskipTests