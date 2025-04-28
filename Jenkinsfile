pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/PrabhatSingh123/car_rental_website'
            }
        }

        stage('Install Dependencies') {
            steps {
                bat 'npm install'
            }
        }

        stage('Build Project') {
            steps {
                bat 'npm run build'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t my-app .'
            }
        }

        stage('Docker Run') {
            steps {
                bat 'docker stop my-app || echo "No container to stop"'
                bat 'docker rm my-app || echo "No container to remove"'
                bat 'docker run -d -p 8080:80 --name my-app my-app'
            }
        }
    }
}
