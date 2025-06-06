#!/usr/bin/env bash
mvn clean install

for f in {8080..8119}; do (java -Xmx512m -Xss128m -jar application/target/application-0.0.21-SNAPSHOT.jar --server.port=$f 2>&1 > application/target/$f.log &); done


