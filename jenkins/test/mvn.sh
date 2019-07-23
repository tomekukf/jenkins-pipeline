echo "********************"
echo "*****TESTING *****"
echo "********************"

WORKSPACE=/var/jenkins_home/workspace/jenkins-pipeline/jenkins/pipeline


docker run --rm  -v /root/.m2:/root/.m2 -v $WORKSPACE/java-app:/app -w /app maven:3-alpine "$@" 
