pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker-compose up --build'
            }
        }
        stage('Deploy') {
            steps {
                sh 'cd cool/counters'
                sh 'python manage.py migrate'
                sh 'python manage.py runserver 0.0.0.0:12000'
            }
        }
    }
}
