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
                sh 'mvn package'
            }
        }
        stage('Build Docker Image') {
            steps {
                // Build a Docker image using a Dockerfile
                sh 'docker build -t mavenpipline .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                // Log in to Docker Hub (make sure credentials are configured in Jenkins)
                sh 'docker login -u abdullah919191 -p dckr_pat_raqTS6-xf-pZZ_Jiwtm3zAmyrfM'

                // Push the Docker image to Docker Hub
                sh 'docker push abdullah919191/mavenpipline'
            }
        }
        stage('Deploy Docker Container') {
            steps {
                // Deploy the Docker container to your target environment
                // Modify this step based on your deployment method and environment
                // Example for a local Docker host:
                sh 'docker run -d --name projecmaven -p 8120:80 abdullah919191/mavenpipline:latest'
            }
        }
    }
}
