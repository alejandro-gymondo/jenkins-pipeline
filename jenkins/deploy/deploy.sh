#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod-user.pem /tmp/.auth ubuntu@ec2-18-185-118-199.eu-central-1.compute.amazonaws.com:/tmp/.auth
scp -i /opt/prod-user.pem ./jenkins/deploy/publish.sh ubuntu@ec2-18-185-118-199.eu-central-1.compute.amazonaws.com:/tmp/publish.sh
ssh -i /opt/prod-user.pem ubuntu@ec2-18-185-118-199.eu-central-1.compute.amazonaws.com "chmod +x /tmp/publish.sh"
ssh -i /opt/prod-user.pem ubuntu@ec2-18-185-118-199.eu-central-1.compute.amazonaws.com "/tmp/publish.sh"
