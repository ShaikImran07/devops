pipeline {
    agent (label 'Jenkins'}
           options {
        // Timeout counter starts AFTER agent is allocated
    timestamps() 
        timeout(time: 10, unit: 'SECONDS')
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
