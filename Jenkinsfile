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
       			  sh 'scp -o StrictHostKeyChecking=no C:/Users/arraja/.jenkins/workspace/MyAppPipeline/target/*.war ec2-user@52.66.9.212:/opt/tomcat9/webapps/'
     	 } 
 		}
 
 }
 
  