#!/bin/bash

echo "****************************"
echo "*** Pushing Docker Image ***"
echo "****************************"
echo ""

IMAGE="maven-project"

echo "*** Docker Login ***"
docker login -u mrpecker -p A73jandr0.,!
echo "*** Tagging Image ***"
docker tag $IMAGE:$BUILD_TAG mrpecker/$IMAGE:$BUILD_TAG
echo "*** Pushing Image ***"
docker push mrpecker/$IMAGE:$BUILD_TAG
