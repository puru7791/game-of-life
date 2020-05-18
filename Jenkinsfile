pipeline{
    agent{label 'GCP'}
//  triggers{
//       pollSCM(* * * * *) 
//       upstreamProjects: 'demo',threshold: hudson.model.Result.SUCCESS}
    stages{
        stage('source'){
            steps{
                git 'https://github.com/puru7791/game-of-life.git'
            }
        }
        stage('Package'){
            steps{
                sh 'mvn package'
                        input 'Do u want to continue next step?'
                        archiveArtifacts 'gameoflife-web/target/*.war'
            }
        }
    
    }
}