pipeline{
    agent any
    tools{
        maven "mvn3.6.3"
    }
    options { buildDiscarder(logRotator(numToKeepStr: '5')) }
    triggers { pollSCM('* * * * *') }
    stages{
        stage ("git clone"){
            steps{
               checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/spring-projects/spring-petclinic.git']])
            }
        }
        stage ("mvn build"){
            steps{
             sh "mvn clean package"
            }
        }
 
}
}
