pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Check out your source code
                checkout scm
            }
        }
        stage('Build') {
            steps {
                // Build your Maven project
                sh 'mvn clean install'
            }
        }
        stage('Package JAR') {
            steps {
                // Install the JAR file into the target directory
                sh 'mvn install:install-file -Dfile=path/to/your.jar -DgroupId=your.group -DartifactId=your-artifact -Dversion=1.0 -Dpackaging=jar'
            }
        }
        stage('Build Docker Image') {
            steps {
                // Build a Docker image using a Dockerfile
                sh 'docker build -t your-image-name .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                // Log in to Docker Hub (make sure credentials are configured in Jenkins)
                sh 'docker login -u your-dockerhub-username -p your-dockerhub-password'

                // Push the Docker image to Docker Hub
                sh 'docker push your-dockerhub-username/your-image-name'
            }
        }
        stage('Deploy Docker Container') {
            steps {
                // Deploy the Docker container to your target environment
                // Modify this step based on your deployment method and environment
                // Example for a local Docker host:
                sh 'docker run -d --name your-container-name -p 80:80 your-dockerhub-username/your-image-name:latest'
            }
        }
    }
}
