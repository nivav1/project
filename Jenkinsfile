def installTerraform() {
    def terraformExists = sh (script: 'which terraform', returnStatus: true)
    if (terraformExists != 0) {
        sh '''
          echo 'working
          echo 'installing terraform'
          echo 'finished...'
        '''
} else {
    sh echo 'terraform already exists'
}
}
pipeline {
    agent any
    
    stages {
        stage ('confirm'){
            step {
                checkout scm
            }
        }
        stage ('test'){
            steps {
                sh echo 'shhhhh'
            }        
            }
        stage ('terraformsss')
            steps {
                scripts {
                    installTerraform()
            }
            }
    }
}
