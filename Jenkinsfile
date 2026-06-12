pipeline {
    agent {
        label 'Jenkins-slave'
    }

    tools {
        maven 'Maven 3.9'
        jdk 'JDK21'
    }

    stages {

        stage('Cleanup workspace') {
            steps {
                cleanWs()
            }
        }

        stage('Checkout from SCM') {
            steps {
                git branch: 'main',
                    credentialsId: 'github',
                    url: 'https://github.com/tharun95-s/jenkins.git'
            }
        }

        stage('Build Application') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Test Application') {
            steps {
                sh 'mvn test'
            }
        }
    }
}
