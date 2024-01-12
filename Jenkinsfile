pipeline {

    agent {
        label "ec2_worker"
    }

    environment {
        AWS_ACCESS_KEY_ID = credentials('accesskey')
        AWS_SECRET_ACCESS_KEY = credentials('secretkey')
        AWS_REGION = "us-east-1"
    }
    
    stages {
        stage('Initialize') {
            steps {
                echo 'Initializing Env...'
                sh '''
                    terraform init
                '''
            }
        }
        stage('Plan') {
            steps {
                echo 'Planning...'
                sh '''
                    terraform plan
                '''
            }
        }
        stage('Apply') {
            steps {
                echo 'Applying...'
                sh '''
                    terraform apply -auto-approve
                '''
            }
        }
    }
}