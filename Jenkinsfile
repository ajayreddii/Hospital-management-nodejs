node {
    // Checkout Code stage
    stage('CheckoutCode') {
        git credentialsId: 'c83a31fc-0869-45c2-96bc-667115a27ff6', url: 'https://github.com/ajayreddii/Hospital-management-nodejs.git'
    }

    // Build
    stage('Build') {
        nodejs(nodeJSInstallationName: 'nodejs16.13.0') {
            
           sh'''docker rm -f nhs:app
               docker build -t nhs:app . 
               docker run -dp 9090:3000 nhs:app'''
            
            

            
          

        }
    }
}

