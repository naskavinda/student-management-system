#!/usr/bin/env bash
docker run --name mysql-jenkins -p 3308:3306 -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=student_management -d mysql:5.6