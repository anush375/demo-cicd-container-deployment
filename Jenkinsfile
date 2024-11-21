pipeline {
    agent any
    environment {
        IMAGE_NAME = "my-flask-app"
        IMAGE_TAG = "v${BUILD_NUMBER}"
        AWS_REGION = "us-east-1"
        //EC2_IP = "ec2_public_ip"
    }
    
    stages {
        // stage('Checkout') {
        //     steps {
        //         git 'https://github.com/yourusername/your-repo.git'
        //     }
        // }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .'
                }
            }
        }
        stage('dockerAuthPush'){
            steps{
                script{
                    withCredentials([usernamePassword(credentialsId: 'docker-login', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
                        sh "echo ${PASS} | docker login -u ${USER} --password-stdin"
                        // some block
                        sh 'docker tag ${IMAGE_NAME}:${IMAGE_TAG} anush12/${IMAGE_NAME}:${IMAGE_TAG}'
                        sh 'docker push anush12/${IMAGE_NAME}:${IMAGE_TAG}'
                    }
                }
            }
        }         

        // stage('Deploy to EKS') {
        //     steps {
        //         script {
        //             sh 'kubectl apply -f deployment.yml'
        //         }
        //     }
        // }
    }
}
