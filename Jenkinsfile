pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('Compile Stage') {
      steps {
          sh 'mvn clean install -DskipTests'
          sh 'echo $PWD'
       }
    }
        stage('Deployment Stage') {
                    steps {
                            sh 'mvn test'
                    }
                }

        stage('Deployment Stage') {
            steps {
                    sh 'mvn deploy'
            }
        }
  }
}