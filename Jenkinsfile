pipeline {
    agent { docker { image 'python:3.7.4' } }
    stages {
        stage('validate') {
            steps {
                sh 'pip install cfn-lint awscli'
                sh 'cfn-lint *.yaml'
            }
        }
        stage('stage') {
            steps {
                sh 'aws --version'
            }
        }
        stage('deploy') {
            steps {
                sh '''
                    echo "aws s3 cp **/* "
                    ls -l 
                '''
            }
        }
    }
}
