echo "********************"
echo "***** BUILDING *****"
echo "********************"

WORKSPACE=/var/jenkins_home/workspace/jenkins-pipeline/jenkins/pipeline

ls /var/jenkins_home/workspace/jenkins-pipeline/jenkins/pipeline
ls /var/jenkins_home/workspace/jenkins-pipeline/jenkins/pipeline/java-app
docker run  -v $PWD/jenkins/pipeline/java-app:/tmp/app -w /tmp/app maven:3-alpine "$@" 
