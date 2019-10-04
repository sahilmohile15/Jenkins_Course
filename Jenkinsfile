node{
	stage('SCM Checkout'){
		git credentialsId: 'test-server', url: 'https://github.com/sahilmohile15/Jenkins_Course'
	}
	stage("mvn package"){
		def mvnHome = tool name: 'maven-3', type: 'maven'
		def mvnCmd = "${mvnHome}/bin/mvn"
		sh "${mvnCmd} clean pakage"
		
	}
	
	stage("Build Docker Image"){
		sh "docker build -t test-app"
	}
	stage('Upload Image to DockerHub'){
     	        withCredentials([string(credentialsId: 'docker-hub', variable: 'docker-pass')]) {
			sh "docker login -u sahilmohile15 -p ${docker-pass}"
    	  }
    	  sh 'docker push sahilmohile15/test-app:1.0.0'
  	}
	stage("Running Docker Image"){
		sh "docker run --name test-app test-app"
	}
}
