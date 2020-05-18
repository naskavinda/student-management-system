pipeline {
    agent any
    tools {
        maven 'M3-3.6.3'
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean -DskipTests install'
            }
        }
        stage('Test') {
            steps {
                 echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}