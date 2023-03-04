pipeline {
    agent any

    environment {
        PATH = "$PATH:/usr/local/bin"
    }

    stages {
        stage('Pull From Github') {
            steps {
                git 'https://github.com/smaiifakher/pickbazar-project-final.git'
            }
        }

        stage('Install Make') {
            steps {
                sh 'make --version'
            }
        }

        stage('Prepare ENV') {
            steps {
                sh 'make env-dev'
            }
        }

        stage('Build Docker') {
            steps {
                sh 'make build'
            }
        }

        stage('Start Docker') {
            steps {
                sh 'make start'
            }
        }

        stage('Install Composer dependencies') {
            steps {
                sh 'make composer-install'
            }
        }

        stage('Database migration') {
            steps {
                sh 'make --version'
            }
        }

        stage('Link Storage') {
            steps {
                sh 'make --version'
            }
        }

        stage('Generate Key') {
            steps {
                sh 'make --version'
            }
        }
    }
}
