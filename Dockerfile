FROM java:8
ADD target/MyDockerSpringBoot.jar //
EXPOSE 8181
ENTRYPOINT ["java", "-jar", "/MyDockerSpringBoot.jar"]