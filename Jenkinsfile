pipeline {
    agent any

    environment {
        IMAGE_NAME = "easytall/jenkins-test"  // o'zingizning DockerHub username/repo
        IMAGE_TAG = "latest"                 // versiya: latest, v1.0.0 va h.k.
        DOCKER_CREDENTIALS_ID = "dockerhub"  // Credential ID Jenkinsda
    }

    stages {
        stage('Docker Build') {
            steps {
                echo "🚧 Docker image build qilinmoqda..."
                sh "docker build -t ${IMAGE_NAME}:${IMAGE_TAG} ."
            }
        }

        stage('Docker Push') {
            steps {
                echo "📤 DockerHub’ga push qilinmoqda..."
                withCredentials([usernamePassword(credentialsId: "${DOCKER_CREDENTIALS_ID}", usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh '''
                        echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                        docker push ${IMAGE_NAME}:${IMAGE_TAG}
                    '''
                }
            }
        }
    }
}
