node{
	stage('SCM Checkout'){
		git credentialsId: 'test-server', url: 'https://github.com/sahilmohile15/Jenkins_Course'
	}
	stage("Build python app"){
		sh "python test-app.py"
	}
	
	stage("Build Docker Image"){
		sh "docker build -t test-app ."
	}
	stage('Upload Image to DockerHub'){
     	        withCredentials([string(credentialsId: 'docker-pass', variable: 'docker-hub')]) {
			sh "docker login -u sahilmohile15 -p ${docker-hub}"
    	  }
    	  sh 'docker push sahilmohile15/test-app:1.0.0'
  	}
	stage("Running Docker Image"){
		sh "docker run --name test-app test-app"
	}
}
