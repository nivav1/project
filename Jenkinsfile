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
                echo 'shhhhh'
            }        
            }
        stage ('terraformsss') {
            steps {
               installTerraform()
            }
    }
}
}

