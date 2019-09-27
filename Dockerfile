FROM java:8
ADD target/MyDockerSpringBoot.jar //
ENTRYPOINT ["java", "-jar", "/MyDockerSpringBoot.jar"]