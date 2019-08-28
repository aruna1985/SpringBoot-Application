node{
 	stages{
 		stage('getSCM'){
 		 			git 'https://github.com/aruna1985/SpringBoot-Application'
 		 			mvnHome=tool 'Maven' 		
 		 }
 		 stage('Build'){
 		 			echo'this is build maven artifact'
 		 			bat(/"${mvnHome}\bin\mvn -Dmaven.test.failure.ignore.clean package/)
 		 }
 		 stage('artifact'){
 		 			archive 'target/*.war'
 		 }
 		 stage('deploy'){
 		 		bat '"copy C:/Users/arraja/Desktop/JavaWS/myspringbootapp/target/*.war C:/Program Files/Apache Software Foundation/Tomcat 9.0/webapps"'
 		}
 }
 }