def installdocker() {
          def checkexist = sh(script: "which docker", returnStatus: true)
          if (checkexist != 0) {
<<<<<<< HEAD
                    sh '''
                    for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done

                    # Add Docker's official GPG key:
                    sudo apt-get update -y
                    sudo apt-get install ca-certificates curl -y
                    sudo install -m 0755 -d /etc/apt/keyrings
                    sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
                    sudo chmod a+r /etc/apt/keyrings/docker.asc

                    # Add the repository to Apt sources:
                    echo \
                    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
                    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
                    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
                    sudo apt-get update -y


                    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
                    '''

=======
                    echo 'working'
                    echo 'installing terraform'
                    echo 'finished...'
>>>>>>> parent of 8bc22c4 (Update Jenkinsfile)
          } else {
                    echo 'Docker already exists'
          }
}


pipeline {
    agent dockeragent
    stages {
        stage ('checkout') {
            steps {
                checkout scm
            }
        }
        stage ('build') {
            steps {
                installdocker()
                sh 'docker pull nivav123/webapp'
            }
        }
        stage ('deploy') {
            steps {
                sh 'docker run -d -p 3000:3000 nivav123/webapp'
            }
        }
    }
}
