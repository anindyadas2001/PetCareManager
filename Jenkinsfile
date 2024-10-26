pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('SonarQube Analysis') {
            environment {
                SONAR_TOKEN = credentials('sonar-token')
            }
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh 'mvn sonar:sonar'
                }
            }
        }
        stage('Deploy to QA') {
            steps {
                sh './scripts/deploy.sh'
            }
        }
        stage('Approval') {
            steps {
                timeout(time: 2, unit: 'HOURS') {
                    input message: 'Approve deployment to production?'
                }
            }
        }
        stage('Deploy to Production') {
            steps {
                sh './scripts/deploy.sh production'
            }
        }
    }
    post {
        failure {
            sh './scripts/rollback.sh'
        }
    }
}
