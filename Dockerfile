FROM java:8
ADD target/MyDockerSpringBoot.jar //
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/MyDockerSpringBoot.jar"]