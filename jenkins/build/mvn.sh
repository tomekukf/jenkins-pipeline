echo "********************"
echo "***** BUILDING *****"
echo "********************"

WORKSPACE=/var/jenkins_home/workspace/jenkins-pipeline/jenkins/pipeline

pwd
ls
docker run  -v /var/jenkins_home/workspace/jenkins-pipeline/java-app:/tmp/app -w /tmp/app maven:3-alpine "$@" 
