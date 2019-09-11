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
 		
 		stage ('cleanup') {
		 
		   dir("${env.WORKSPACE}@tmp") {
        	deleteDir()
  		}
  	}
			
 		 stage('deploy'){ 		 		
 		 		 sshagent(['tomcat-dev']) {
       			  sh '''scp -o StrictHostKeyChecking=no C:/Program Files (x86)/Jenkins/workspace/MyAppPipeline/target/*.war ec2-user@3.17.59.36:/opt/apache-tomcat-8.5.45/webapps/'''
     	 } 
 		}
 
 }
 
  