#!/bin/bash

echo "Copy jar file to build location"


cp -f java-app/target/*.jar jenkins/build/

echo "*********BUILDING*********"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build 

