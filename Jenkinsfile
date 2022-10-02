pipeline {
    environment {
        NPM_CONFIG_CACHE = "${WORKSPACE}/.npm"
    }
    agent {
        docker {
            image 'node:6-alpine' 
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
