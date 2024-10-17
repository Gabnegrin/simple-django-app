pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                dir('simple-django-app') {
                    sh 'docker-compose up --build'
                }
            }
        }
        stage('Deploy') {
            steps {
                dir('simple-django-app') {
                    sh 'docker-compose down && docker-compose up -d'
                }
            }
        }
    }
}
