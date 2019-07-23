echo "********************"
echo "*****TESTING *****"
echo "********************"

WORKSPACE=/home/jenkins/jenkins/jenkins-data/workspace/jenkins-pipeline


docker run --rm  -v /root/.m2:/root/.m2 -v $WORKSPACE/java-app:/app -w /app maven:3-alpine "$@" 
