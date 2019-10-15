pipeline {
    agent { docker { image 'python:3.7.4' } }
    stages {
        stage('build') {
            steps {
                sh 'pip install cfn-lint'
            }
        }
        stage('test') {
            steps {
                sh 'cfn-lint *.yaml'
            }
        }
        stage('deploy') {
            steps {
                sh 'echo "I am the deploy stage"'
            }
        }
    }
}
