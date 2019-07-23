#!/bin/bash

echo "pushing image"
IMAGE="jenkins-pipeline"

echo "login to docker"
docker login -u tomekukf -p $PASS
echo " tagging image"
docker tag $IMAGE:$BUILD_TAG tomekukf/$IMAGE:$BUILD_TAG
echo " push to docker hub " 
docker push tomekukf/$IMAGE:$BUILD_TAG

