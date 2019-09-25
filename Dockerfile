FROM tomcat:8.0-alpine
ADD target/myspringbootapp-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps
EXPOSE 8181
