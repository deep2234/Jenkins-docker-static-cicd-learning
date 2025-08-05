pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("my-jenkins-static-app")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Stop and remove existing container if any
                    sh 'docker rm -f static-app || true'
                    // Run the new container
                    dockerImage.run('-d -p 8081:80 --name jenkins-docker-static-app')
                }
            }
        }
    }
}
