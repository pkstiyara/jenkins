pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Stage Env') {
            steps {
                echo 'Hello World'
                echo '$BUILD_ID'
            }
        }
        
        stage('Test Env') {
            steps {
                sh 'ls'
            }
        }
        
        stage('Dev Env') {
            steps {
                sh 'ls'
            }
        }
        
        stage('Continue ?') {
            steps {
                sh 'ls'
            }
        }
        
        stage('Prod Env') {
            steps {
                sh 'ls'
            }
        }
        
        
    
    }
}
