pipeline {
  agent {
    docker {
      image 'jenkinscli/blueocean'
    }

  }
  stages {
    stage('Stage1') {
      steps {
        git 'git@github.com:MadhumitaHPE/BTMS.git'
      }
    }
  }
}