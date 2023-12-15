pipeline {
  agent any
  stages {
    stage('groovy script') {
      steps {
        script {
          println("from groovy script block")
        }
        echo "SUCCESS-groovy"

      }
    }

    stage('hello') {
      steps {
        sh 'echo "pipeline script works"'
        sh '1.2.3......'
        error "jenkins not posting steps status"
      }
    }
    stage('publish-cheks'){
        steps{
            publishChecks name: 'example', title: 'Pipeline Check', summary: 'check through pipeline',
            text: 'publish-checks'
        }
    }

  }
  environment {
    user = 'ec2-user'
    git_token = 'github'
  }
}