pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS=credentials('Docker')
    }
    stages {
        stage('Build image') {
            steps {
                sh 'docker build -t bjgomes/maven:latest .'
            }
        }
        stage('Login') {
			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
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
    post {
        always {
            sh 'docker logout'
        }
    }
}

