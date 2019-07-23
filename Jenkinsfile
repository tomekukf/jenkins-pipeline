
pipeline {

    agent any
    
    environment {
        PASS = credentials('Dockerhub_pass') 
    }

    stages {

        stage('Build') {
            steps {
                sh '''
                      pwd
                    ./jenkins/pipeline/jenkins/build/mvn.sh mvn  -X -B -DskipTests clean package
                    ./jenkins/pipeline/jenkins/build/build.sh

                '''
            }

            post {
                success {
                   archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
                }
            }
        }

        stage('Test') {
            steps {
                sh './jenkins/pipeline/jenkins/test/mvn.sh mvn test'
            }

            post {
                always {
                    junit 'java-app/target/surefire-reports/*.xml'
                }
            }
        }

        stage('Push') {
            steps {
                sh './jenkins/pipeline/jenkins/push/push.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh './jenkins/pipeline/jenkins/deploy/deploy.sh'
            }
        }
    }
}
