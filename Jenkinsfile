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
                sh 'docker-compose down && docker-compose up -d'
            }                   
        }
    }
}
