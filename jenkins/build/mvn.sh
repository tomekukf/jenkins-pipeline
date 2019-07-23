echo "********************"
echo "***** BUILDING *****"
echo "********************"

WORKSPACE=/home/jenkins/jenkins/jenkins-data/workspace/jenkins-pipeline


docker run  -v $WORKSPACE/java-app:/tmp/app -w /tmp/app maven:3-alpine "$@" 
