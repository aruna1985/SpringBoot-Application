FROM tomcat:8.0-alpine
COPY /src/main/resources/tomcat-users.xml /usr/local/tomcat/conf
ADD target/MyDockerSpringBoot.war /usr/local/tomcat/webapps
