#!/usr/bin/env bash
mvn clean install
SERVER_PORT=8024 java -jar application/target/application-0.0.24-SNAPSHOT.jar
