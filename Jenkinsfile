pipeline {
  agent any
  stages {
    stage('groovy script') {
      steps {
        script {
          println("from groovy script block")
        }
        publishChecks conclusion: 'NEUTRAL', detailsURL: 'https://github.com/sdputurn/learn-github', name: 'hello-world', summary: 'buiild-summary', text: 'b-text', title: 'b-title'

      }
    }

    stage('hello') {
      steps {
        sh 'echo "pipeline script works"'
      }
    }

  }
  environment {
    user = 'ec2-user'
    git_token = 'github'
  }
}