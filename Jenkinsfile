pipeline {
  agent any

  environment {
    PASS = credentials('registry-pass')
  }

  stages {

    stage('Build') {
      steps {
        echo 'Building...'
        sh '''
          ./jenkins/build/maven.sh -B -DskipTests clean package
          ./jenkins/build/build.sh
        '''
      }
      post {
        success {
              archiveArtifacts artifacts: 'java-app/target/*.jar',  fingerprint: true
            }
        }
    }

    stage('Test') {
      steps {
        echo 'Testing...'
        sh './jenkins/test/maven.sh test'
      }
      post {
        always {
              junit 'java-app/target/surefire-reports/*.xml'
            }
        }
    }

    stage('Push') {
      steps {
        echo 'Pushing...'
        sh './jenkins/push/push.sh'
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploy...'
        sh './jenkins/deploy/deploy.sh'
      }
    }

  }
}
