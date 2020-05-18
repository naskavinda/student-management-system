pipeline {
    agent { dockerfile true }
//     tools {
//         maven 'M3-3.6.3'
//     }
    stages {
        stage('Build') {
            steps {
                sh 'building.....'
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