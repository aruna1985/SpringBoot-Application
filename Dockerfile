FROM tomcat:8.0-alpine
ADD target/MyDockerSpringBoot.war /usr/local/tomcat/webapps
