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
node {
    build ('test'){
        sh echo 'shhhhh'
    }
    build ('terraformsss')
        scripts {
            installTerraform()
        }
}
