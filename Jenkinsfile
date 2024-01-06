pipeline{
    agent any
    
    stages{
        stage('Git Checkout'){
            steps{
                git url: "https://github.com/ramesherrorhunter/Django-EcommerceApp-Docker-Compose.git", branch: "main"
            }
        }
        stage('Build'){
            steps{
                sh 'docker-compose build --no-cache'
            }
        }
        stage('Run'){
            steps{
                sh 'docker-compose up -d'
            }
        }
    }
}
