node
{

//Checkout Code stage
stage('CheckoutCode'){
git credentialsId: 'c83a31fc-0869-45c2-96bc-667115a27ff6', url: 'https://github.com/ajayreddii/Hospital-management-nodejs.git'
}

//Build
stage('Build'){
nodejs(nodeJSInstallationName: 'nodejs18.6.0'){
sh "npm install"
sh "npm i sonarqube-scanner "
}
}

//Execute SOnarQUbe Report
stage('ExecuteSonarQubeReport'){
nodejs(nodeJSInstallationName: 'nodejs18.6.0'){
sh "npm run sonar"
}
}

stage('UploadArtifcatsintoNexus')
{
sh "npm publish"
}

stage('RunNodeJsApp')
{
sh "npm run app.js &"
}



}
