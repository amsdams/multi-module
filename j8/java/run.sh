#!/usr/bin/env bash
mvn clean install
SERVER_PORT=8008 java -jar application/target/application-0.0.8-SNAPSHOT.jar
