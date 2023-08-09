node {
    // Checkout Code stage
    stage('CheckoutCode') {
        git credentialsId: 'c83a31fc-0869-45c2-96bc-667115a27ff6', url: 'https://github.com/ajayreddii/Hospital-management-nodejs.git'
    }

    // Build
    stage('Build') {
        nodejs(nodeJSInstallationName: 'nodejs16.13.0') {
            sh 'npm install -g npm'
            sh 'npm config fix'
            sh 'npm install'
            sh "npm publish"
             sh 'npm config set registry http://18.221.2.79:8081/repository/nodejs-repo/'
            sh 'npm i sonarqube-scanner'

            sh "npm run sonar"
            
          

        }
    }
}

