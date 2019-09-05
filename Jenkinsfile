node{
def mvnHome
 	
 		stage('getSCM'){
 		 			git 'https://github.com/aruna1985/SpringBoot-Application.git'
 		 			mvnHome=tool 'Maven' 		
 		 }
 		 stage('Build'){
 		 			echo'this is build maven artifact'
 		 			bat(/"${mvnHome}\bin\mvn" clean package/)
 		 }
 		
 		 stage('deploy'){ 		 		
 		 		 sshagent(['tomcat-dev']) {
       			  sh 'scp -o C:\\Program Files (x86)\\Jenkins\\workspace\\MyAppPipeline\\target\\myspringbootapp-0.0.1-SNAPSHOT.war ec2-3-17-59-36.us-east-2.compute.amazonaws.com:8090:/apache-tomcat-9.0.24/webapps/'
     	 } 
 		}
 
 }