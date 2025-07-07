pipeline {
    agent any

    parameters {
        string(name: 'IMAGE_TAG', defaultValue: 'latest', description: 'Docker image tag')
        booleanParam(name: 'DOCKER_BUILD', defaultValue: true, description: 'Docker build qilish kerakmi?')
    }

    stages {
        stage('Show Params') {
            steps {
                echo "✅ Siz kiritgan IMAGE_TAG: ${params.IMAGE_TAG}"
                echo "🔁 Docker build qilish: ${params.DOCKER_BUILD}"
            }
        }

        stage('Docker Build') {
            when {
                expression { return params.DOCKER_BUILD == true }
            }
            steps {
                echo '🚧 Docker image build qilinmoqda...'
                sh "docker build -t myapp-image:${params.IMAGE_TAG} ."
            }
        }
    }
}
