#!/usr/bin/env bash
mvn clean install
SERVER_PORT=8023 java -jar application/target/application-0.0.23-SNAPSHOT.jar
