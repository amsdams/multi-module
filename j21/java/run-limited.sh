#!/usr/bin/env bash
mvn clean install
SERVER_PORT=8021 java -Xmx512m -Xss128m  -jar application/target/application-0.0.21-SNAPSHOT.jar
