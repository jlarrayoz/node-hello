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
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }
        stage('Deliver') { 
            steps {
                sh "chmod +x -R ${env.WORKSPACE}"
                sh 'sh deliver.sh' 
                input message: 'Termino de usar la app? (Click "Proceed" para continuar)' 
                sh 'sh kill.sh' 
            }
        }        
    }
}
