pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                git 'https://github.com/AjayKumarBadhan/jenkins-ci-cd-demo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("flask-demo-app")
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    // Stop old container if exists
                    sh 'docker rm -f flask-container || true'

                    // Run new container
                    sh 'docker run -d -p 5000:5000 --name flask-container flask-demo-app'
                }
            }
        }
    }
}
