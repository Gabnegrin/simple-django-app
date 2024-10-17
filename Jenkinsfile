pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                dir('simple-django-app') {
                    sh './docker-compose up --build'
                }
            }
        }
        stage('Deploy') {
            steps {
                dir('simple-django-app') {
                    sh './cd cool/counters'
                    sh './python manage.py migrate'
                    sh './python manage.py runserver 0.0.0.0:12000'
                }
            }
        }
    }
}
