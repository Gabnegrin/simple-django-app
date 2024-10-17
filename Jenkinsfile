pipeline {
    agent any
    environment {
        DOCKER_COMPOSE = 'docker-compose -f docker-compose.yml'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building the Docker image for the Django app...'
                sh "${DOCKER_COMPOSE} build cool_counters"
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh "${DOCKER_COMPOSE} run cool_counters python manage.py test"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                sh "${DOCKER_COMPOSE} up -d cool_counters"
            }
        }
    }
}
