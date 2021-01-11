pipeline {
    agent any
    stages {
        stage("git-clone"){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/kumaranraj2895/maven-demo-jib']]])
            }
        }
        stage("clean"){
            steps{
                sh "mvn clean"
            }
        }
        stage("validate"){
            steps{
                sh "mvn validate"
            }
        }
        stage("compile"){
            steps{
                sh "mvn compile"
            }
        }
        stage("package"){
            steps{
                sh "mvn package"
            }
        }
        stage("install"){
            steps{
                sh "mvn install"
            }
        }
    }
}