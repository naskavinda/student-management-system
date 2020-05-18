#!/usr/bin/env bash
docker rm spring-mysql
echo "==================== Remove Docker Container =============="
sleep 1
docker rmi spring-mysql --force
echo "==================== Remove Docker Image =============="
sleep 1
mvn clean install -DskipTests
echo "==================== Build the project ================"
sleep 2
docker build -t spring-mysql .
echo "==================== Build Docker Image ================"
sleep 2
docker run -p 9090:8080 --name spring-mysql --link mysql-jenkins:mysql spring-mysql
