pipeline {
    agent any
    stages {
        stage('check out') {
            steps {
              checkout scm
            }
        }
         stage('Build Image') {
            steps {
              bat 'docker build -t node:8.11-slim Dockerfile13.'
            }
        }
        stage('run Images') {
            steps {
                bat 'docker run --name node:8.11-slim -p 3070:80 node:8.11-slim'
            }
        }
                
         stage('Tag Image') {
           
            steps {
               bat 'docker tag node:8.11-slim shaikimran10/node:8.11-slim'
            }
        }
         stage('Push Image') {
          
            steps {
               bat 'docker login -u shaikimran10 -p 9491433398'
                bat 'docker push shaikimran10/node:8.11-slim'
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
