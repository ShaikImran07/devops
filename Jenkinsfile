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
              bat 'docker build -t node:8.11-slim -f Dockerfile13 .'
            }
        }
    }
