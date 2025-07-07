pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo '✅ Salom, bu Jenkins pipeline!'
            }
        }

        stage('Docker Build') {
            steps {
                echo '🚧 Docker image build qilinmoqda...'
                sh 'docker build -t myapp-image .'
            }
        }
    }
}
