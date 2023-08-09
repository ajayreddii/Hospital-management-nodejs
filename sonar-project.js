const scanner = require('sonarqube-scanner');

scanner({
  serverUrl: 'http://13.58.242.218:9000/',
       options : {
	    'sonar.projectDescription': 'This is a Node JS application',
	    'sonar.projectName': 'Hospital-management-nodejs',
	    'sonar.projectKey':'Hospital-management-nodejs',
	   // 'sonar.login': 'squ_548a5daba7b07d897a98550cd11bb3ddd84c8e58',
	    'sonar.login': 'admin',
	    'sonar.password': 'admin123',
            'sonar.projectVersion':'1.0.0',
	    'sonar.language':'js',
            'sonar.sourceEncoding':'UTF-8',
            'sonar.sources': '.',
	  //'sonar.tests': 'specs',
          //'sonar.inclusions' : 'src/**'
       },
}, () => {});
