pipeline {
    agent { docker { image 'python:3.5.1' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
        }
        stage('test') {
            steps {
                sh 'echo "I am the test stage"'
            }
        }
        stage('deploy') {
            steps {
                sh 'echo "I am the deploy stage"'
            }
        }
    }
}
