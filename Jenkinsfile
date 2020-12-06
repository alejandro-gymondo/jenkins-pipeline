pipeline {
  agent any

  stages {

    stage('Build') {
      steps {
        echo 'Building...'
        sh '''
          ./jenkins/build/maven.sh -B -DskipTests clean package
          ./jenkins/build/build.sh
        '''
      }
    }

    stage('Test') {
      steps {
        echo 'Testing...'
        sh './jenkins/test/maven.sh test'
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
