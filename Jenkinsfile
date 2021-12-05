pipeline {
    agent any
    stages {
        stage('Build image') {
            steps {
                sh 'docker build -t bjgomes/maven:latest .'
            }
        }
        stage('push image') {
            steps {
                sh 'docker push bjgomes/maven:latest'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo"This step saved for Kubernetes"'
            }
        }
    }
}

