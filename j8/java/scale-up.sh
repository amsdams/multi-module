#!/usr/bin/env bash
mvn clean install

for f in {8080..8119}; do (java -Xmx32m -Xss256k -jar application/target/application-0.0.8-SNAPSHOT.jar --server.port=$f 2>&1 > application/target/$f.log &); done


