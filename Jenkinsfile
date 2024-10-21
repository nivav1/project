def installTerraform() {
        sh '''
          echo 'working
          echo 'installing terraform'
          echo 'finished...'
        '''
}
pipeline {
    agent any
    
    stages {
        stage ('confirm'){
            steps {
                checkout scm
            }
        }
        stage ('test'){
            steps {
                sh 'echo shhhhh'
            }        
            }
        stage ('terraformsss') {
            steps {
                scripts {
                    installTerraform()
            }
            }
    }
}
}

