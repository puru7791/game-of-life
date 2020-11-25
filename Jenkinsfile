pipeline{
    agent any
    stages{
        stage('source'){
            steps{
                git 'https://github.com/puru7791/game-of-life.git'
            }
        }
        stage('build'){
            steps{
                sh 'mvn clean package'
            }
        }
    
    }
}
