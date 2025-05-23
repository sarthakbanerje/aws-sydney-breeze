pipeline {
    agent any

    stages {
        stage('AWS-Deploy') {
            agent {
                docker {
//                    image 'sarthakbanerjee/custom-terraform-image:1'
//                    args "--entrypoint='/bin/bash'"
//                    reuseNode true
                    image 'amazon/aws-cli'
                }
            }
            steps {
                echo 'Deploy AWS Stack'
                sh '''
                    aws --version

                '''
            }
        }
    }
}