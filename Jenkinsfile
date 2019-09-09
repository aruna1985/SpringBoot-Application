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
       			  sh 'scp -i -o StrictHostKeyChecking=no target/*.war ~.ssh/awspockey.pem ec2-user@3.17.59.36:/root/apache-tomcat-9.0.24/webapps/'
     	 } 
 		}
 
 }