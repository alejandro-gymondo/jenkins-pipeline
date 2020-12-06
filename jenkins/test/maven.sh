#!/bin/bash

echo "****************************************"
echo "************ Testing Code **************"
echo "****************************************"

WORKSPACE=/Users/alejandro.pena/Services/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -v $WORKSPACE/java-app:/app -v /Users/alejandro.pena/.m2/:/root/.m2/ -w /app maven mvn "$@"

echo "****************************************"
echo "******** Finished Testing Code *********"
echo "****************************************"
