pipeline{
 
 	stages{
 		stage('getSCM'){
 		 	steps{
 		 			git 'https://github.com/aruna1985/SpringBoot-Application'
 		 			mvnHome=tool 'Maven'
 		 	}
 		 }
 		 stage('Build'){
 		 	steps{
 		 			echo'this is build maven artifact'
 		 			bat(/"${mvnHome}\bin\mvn -Dmaven.test.failure.ignore.clean package/)
 		 			
 		 	}
 		 }
 		 stage('artifact'){
 		 	steps{
 		 			archive 'target/*.war'
 		 	}
 		 }
 		 stage('deploy'){
 		 	steps{
 		 		bat '"copy C:/Users/arraja/Desktop/JavaWS/myspringbootapp/target/*.war C:/Program Files/Apache Software Foundation/Tomcat 9.0/webapps"'
 		 	}
 	}
 }