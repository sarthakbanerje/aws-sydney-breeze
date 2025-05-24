pipeline {
    agent any

    stages {
        stage('AWS-Deploy') {
            agent {
                docker {
                    image 'sarthakbanerjee/custom-terraform-image:1'
                    args "--entrypoint=''"
                }
            }
            steps {
                echo 'Deploy AWS Stack'

                withCredentials([usernamePassword(credentialsId: 'aws-jenkins-sarthakanz', passwordVariable: 'AWS_SECRET_ACCESS_KEY', usernameVariable: 'AWS_ACCESS_KEY_ID')]) {
                    // sh '''
                    //     aws --version
                    //     terraform --version
                    //     terraform init
                    //     terraform plan
                    //     terraform apply --auto-approve
                    // '''
                    sh '''
                        terraform destroy --auto-approve
                    '''
                }
            }
        }
    }
}