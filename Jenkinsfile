pipeline {
    agent any
    options {
            ansiColor('xterm')
    }
    tools {

            maven 'maven-3.5.0' 
        }
    stages {
            stage('Lint check') {
                steps {
                    sh env
                    sh 'this stage should run in feature branch'
                    sh 'echo LINK CHECKS COMPLETED'
                }
            }
            
            stage ('Perform ansible dry run') {
                steps {
                    sh 'This stage should run only in the PR'
                    //sh 'ansible-playbook robot-dryrun.yaml -e COMPONENT=mongodb -e ENV=dev -e ansible_name=centos -e ansible_password=DevOps321'
                }
            }
            stage ('Performing merge') {
                steps {
                    sh "echo Performing merge"
                    sh "echo Performing Deployment"
                }
            }
        }
        
    }


    










// // pipeline {
// //     /* Declarative Pipeline */
// // }



// // node {
// //     /* scripted pipeline */
// // }