node{
def mvnHome
 	
 		stage('getSCM'){
 		 			git 'https://github.com/aruna1985/SpringBoot-Application.git'
 		 			mvnHome=tool 'Maven' 		
 		 }
 		 stage('Build'){
 		 			echo'this is build maven artifact'
 		 			bat(/"${mvnHome}\bin\mvn" -Dmaven.test.failure.ignore.clean package/)
 		 }
 		
 		 stage('deploy'){
 		 		bat '''copy "C:\\Users\\arraja\\Desktop\\JavaWS\\myspringbootapp\\target\\myspringbootapp-0.0.1-SNAPSHOT.war" "C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps"''' 
 		}
 
 }