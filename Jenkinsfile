pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                sh 'echo "Something'
                git 'https://github.com/user/repo.git'
            }
        }
        // stage('Build Docker Image') {
        //     steps {
        //         sh 'docker build -t myapp:${BUILD_NUMBER} .'
        //     }
        // }
        // stage('Push to Docker Hub') {
        //     steps {
        //         withDockerRegistry([credentialsId: 'dockerhub-creds', url: '']) {
        //             sh 'docker push myapp:${BUILD_NUMBER}'
        //         }
        //     }
        // }
    }
}
