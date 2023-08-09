node
{

//Checkout Code stage
stage('CheckoutCode'){
git credentialsId: 'c83a31fc-0869-45c2-96bc-667115a27ff6', url: 'https://github.com/ajayreddii/Hospital-management-nodejs.git'
}

//Build
stage('Build'){
nodejs(nodeJSInstallationName: 'nodejs16.13.0'){
sh 'npm install -g npm'
sh 'npm config fix'
sh 'npm install'
sh 'npm i sonarqube-scanner'
sh 'npm run sonar'
sh 'npm publish --registry=http://18.221.2.79:8081/repository/nodejs-repo/ --force --_auth=afbdd084-cdd8-3149-888c-5b10963cbf97
'


}
}
}node {
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

            // Using credentials for publishing
            withCredentials([string(credentialsId: '510ef335-a4c7-4101-aa12-6a9e5fd3e410', variable: 'NPM_AUTH_TOKEN')]) {
                sh "npm publish --registry=http://18.221.2.79:8081/repository/nodejs-repo/ --force --_auth=YWRtaW46YWRtaW4xMjM="
            }
        }
    }
}

