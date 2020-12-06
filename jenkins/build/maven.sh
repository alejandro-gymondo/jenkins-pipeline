#!/bin/bash

echo "****************************************"
echo "************ Building JAR **************"
echo "****************************************"

docker run --rm -v $PWD/java-app:/app -v /Users/alejandro.pena/.m2/:/root/.m2/ -w /app maven mvn "$@"

echo "****************************************"
echo "******** Finished Building JAR *********"
echo "****************************************"
