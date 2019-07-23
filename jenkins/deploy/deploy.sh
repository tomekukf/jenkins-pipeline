#!/bin/bash

echo jenkins-pipeline > /tmp/.auth
echo $BUILD_TAG  >> /tmp/.auth
echo $PASS >> /tmp/.auth
