pipeline {
    agent {
        docker {
            image 'node:lts-bullseye-slim' 
            args '-p 3000:3000' 
        }
    }
    stages {
        stage('clone-repo') { 
            steps {
                echo "Stage: clone-repo"
                git 'https://github.com/johnpapa/node-hello'
            }
        }
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }
    }
}
