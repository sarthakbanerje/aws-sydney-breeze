pipeline {
    agent any

    stages {
        stage('AWS-Deploy') {
            agent {
                docker {
                    image 'sarthakbanerjee/custom-terraform-image:1'
                    args "--entrypoint='/bin/bash'"
                }
            }
            steps {
                echo 'Deploy AWS Stack'
                sh '''
                    aws --version
                    terraform --version
                '''
            }
        }
    }
}