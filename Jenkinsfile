pipeline {
  agent {
  docker {
              image 'maven:3-alpine'
          }
  }
  stages {
    stage('Compile Stage') {
      steps {
          sh 'mvn clean install -DskipTests'
       }
    }

  }
}