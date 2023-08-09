node
{

//Checkout Code stage
stage('CheckoutCode'){
git credentialsId: 'c83a31fc-0869-45c2-96bc-667115a27ff6', url: 'https://github.com/ajayreddii/Hospital-management-nodejs.git'
}

//Build
stage('Build'){
nodejs(nodeJSInstallationName: 'nodejs15.2.1'){
sh 'npm install -g npm'
sh 'npm build'

}
}
}


