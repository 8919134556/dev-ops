pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Pull the latest code from the repo.
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def appImage = docker.build("sample-web-project")
                }
            }
        }

        stage('Deploy with Ansible') {
            steps {
                // Assuming you have an Ansible plugin set up with Jenkins
                ansiblePlaybook(
                    playbook: 'deploy.yml', 
                    inventory: 'hosts.ini', 
                    credentialsId: 'ansible-ssh-key'
                )
            }
        }
    }
}
