#!/bin/bash

echo "****************************************"
echo "************ Building JAR **************"
echo "****************************************"

WORKSPACE=/Users/alejandro.pena/Services/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -v $WORKSPACE/java-app:/app -v /Users/alejandro.pena/.m2/:/root/.m2/ -w /app maven mvn "$@"

echo "****************************************"
echo "******** Finished Building JAR *********"
echo "****************************************"
