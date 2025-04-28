pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/PrabhatSingh123/car_rental_website'
            }
        }

        stage('Install Dependencies') {
            steps {
                bat 'npm install'
            }
        }

        stage('Build') {
            steps {
                bat 'npm run build'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t my-react-container .'
            }
        }

        stage('Docker Run') {
            steps {
                bat '''
    docker stop my-react-container || echo "No container to stop"
    docker rm my-react-container || echo "No container to remove"
'''

                
                bat 'docker run -d -p 8080:80 --name my-react-container my-react-container'
            }
        }
    }
}