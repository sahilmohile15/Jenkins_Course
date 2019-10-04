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
		sh "docker build -t test-image.1.1.0"
	}
	stage("Running Docker Image"){
		sh "docker run --name test-image test-image.1.1.0"
	}
}
