def installTerraform() {
          def checkexist = sh(script: "which terrafor", returnStatus: true)
          if (checkexist != 0) {
                    echo 'working'
                    echo 'installing terraform'
                    echo 'finished...'
          } else {
                    echo 'bruh'
          }
}
pipeline {
    agent any
    
    stages {
        stage ('test'){
            steps {
                 sh   '''
                 echo 'jj'
                 echo 'fifa'
                 echo 'ss'
                '''
            }        
            }
        stage ('terraformsss') {
            steps {
               installTerraform()
            }
    }
}
}

