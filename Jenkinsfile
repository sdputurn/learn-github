pipeline {
  agent any
  stages {
    stage('groovy script') {
      steps {
        script {
          println("from groovy script block")
        }

      }
    }

    stage('hello') {
      steps {
        sh 'echo "pipeline script works"'
        error "jenkins not posting steps status"
      }
    }

  }
  environment {
    user = 'ec2-user'
    git_token = 'github'
  }
}