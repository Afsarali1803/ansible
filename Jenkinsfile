pipeline {
    agent any
    options {
            ansiColor('xterm')
    }
    environment {
        SSH_CRED = credentials('SSH-CRED')
    }
    tools {
        maven 'maven-3.5.0' 
    }
    stages {
        stage('Lint check') {
            when {branch pattern: "feature.*",comparator: "REGEXP"}
            steps {
                sh "env"
                sh " echo stage should run in feature branch "
                sh " echo this link check"
            }
        }
        stage ('Perform ansible dry run') {
            when {branch pattern: "PR-.*",comparator: "REGEXP"}
            steps {
                sh " echo This stage should run only in the PR "
                sh "ansible-playbook robot-dryrun.yaml -e COMPONENT=mongodb -e ENV=dev -e ansible_name=centos -e ansible_password=DevOps321 "
            }
        }
        stage ('Performing merge') {
            when { branch 'main' }
            steps {
                sh "echo Performing merge"
                sh "echo Performing Deployment"
            }
        }    

    }
}

            //stage ('Perform ansible dry run') {
            //    steps {
            //        sh 'This stage should run only in the PR'
            //        sh 'ansible-playbook robot-dryrun.yaml -e COMPONENT=mongodb -e ENV=dev -e ansible_name=centos -e ansible_password=DevOps321'
            //    }
            //}
            //stage ('Performing merge') {
            //    steps {
            //        sh "echo Performing merge"
            //        sh "echo Performing Deployment"
            //    }
           // }
        
        


    










// // pipeline {
// //     /* Declarative Pipeline */
// // }



// // node {
// //     /* scripted pipeline */
// // }