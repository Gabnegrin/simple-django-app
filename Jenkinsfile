pipeline {
    agent any
    environment {
        DOCKER_COMPOSE = 'docker-compose -f docker-compose.yml'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Navigating to project root and building the Docker image...'
                sh 'cd $WORKSPACE && ${DOCKER_COMPOSE} build cool_counters'
            }
        }
        stage('Test') {
            steps {
                echo 'Running Django tests...'
                sh 'cd $WORKSPACE && ${DOCKER_COMPOSE} run cool_counters python manage.py test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the Django application...'
                sh 'cd $WORKSPACE && ${DOCKER_COMPOSE} up -d cool_counters'
            }
        }
    }
    post {
        always {
            echo 'Cleaning up Docker resources...'
            sh 'cd $WORKSPACE && ${DOCKER_COMPOSE} down'
        }
    }
}
