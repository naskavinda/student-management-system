pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('Compile Stage') {
      steps {
          sh 'mvn clean install -DskipTests'
       }
    }

  }
}