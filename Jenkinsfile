pipeline {
  agent any
  stages {
    stage('groovy script') {
      steps {
        script {
          println("from groovy script block")
        }
        publishChecks conclusion: 'NEUTRAL', detailsURL: 'https://github.com/sdputurn/learn-github', name: 'hello-world', summary: 'buiild-summary', text: 'b-text', title: 'b-title'
        publishChecks name: 'example', title: 'Pipeline Check', summary: 'check through pipeline',
            text: 'you can publish checks in pipeline script',
            detailsURL: 'https://github.com/sdputurn/learn-github#pipeline-usage',
            actions: [[label:'an-user-request-action', description:'actions allow users to request pre-defined behaviours', identifier:'learn-github']]
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