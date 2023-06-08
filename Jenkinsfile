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
              bat 'docker build -t ubuntu_jenkins .'
            }
        }
        stage('run Images') {
            steps {
                bat 'docker run --name ubuntu_jenkins -p 8998:80 ubuntu:latest'
                
         stage('Tag Image') {
           
            steps {
               bat 'docker tag ubuntu_jenkins:latest shaikimran10/ubuntu:latest'
            }
        }
         stage('Push Image') {
          
            steps {
               bat 'docker login -u shaikimran10 -p 9491433398'
                bat 'docker push shaikimran10/ubuntu:latest'
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
