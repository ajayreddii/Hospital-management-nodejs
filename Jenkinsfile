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
            sh 'npm i sonarqube-scanner'
            sh 'npm run sonar'

            nexusArtifactUploader artifacts: [[artifactId: 'nhs-app', classifier: '', file: '.', type: 'tgz']], credentialsId: '510ef335-a4c7-4101-aa12-6a9e5fd3e410', groupId: 'in.nhs-app', nexusUrl: '18.221.2.79:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'nodejs-repo', version: '1.0.0'
            }
        }
    }
}
