pipeline {
    agent any
    stages {
        stage('check out') {
            steps {
              checkout scm
            }
        }
        stage('docker compose stop') {
          
            steps {
               bat 'docker-compose down'
            }
        }
           stage('docker-compose start') {
          
            steps {
               bat 'docker-compose up -d'
            }
        }
        
         stage('push image') {
          
            steps {
               bat ' docker login -u shaikimran10 -p 9491433398'
                bat ' docker push shaikimran10/nginx'
               
            }
        }
    }
    post { 
        aborted { 
            echo 'ABORTED'
        }
         success { 
            echo 'SUCCESS'
        }
         failure { 
            echo 'FAILURE'
        }
        changed { 
            echo 'FAILURE'
        }
    }
    
}
