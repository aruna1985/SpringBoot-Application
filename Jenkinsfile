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
       			  sh 'scp -o StrictHostKeyChecking=no C:\\Program Files (x86)\\Jenkins\\workspace\\MyAppPipeline\\target\\myspringbootapp*.war ec2-3-17-59-36.us-east-2.compute.amazonaws.com:/apache-tomcat-9.0.24/webapps/'
     	 } 
 		}
 
 }