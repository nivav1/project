def installTerraform() {
          def checkexist = sh(script: "which terrafor", returnStatus: true)
          if (checkexist != 0) {
                    echo checkexist()
                    echo 'working'
                    echo 'installing terraform'
                    echo 'finished...'
          } else {
                    echo 'bruh'
                    echo checkexist()
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

