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
              bat 'docker build -t node1 -f Dockerfile13 .'
            }
        }
         stage('Tag Image') {
              steps {
               bat 'docker tag node1 shaikimran10/node1'
            }
        }
         stage('Push Image') {
          
            steps {
               bat 'docker login -u shaikimran10 -p 9491433398'
                bat 'docker push shaikimran10/node1'
            }
         }
         stage('Run Image') {
              steps {
                bat 'docker run --name C03 -p 7791:3070 -d node1'
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
