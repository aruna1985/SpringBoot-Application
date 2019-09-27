FROM java:8
ADD /MyDockerSpringBoot.jar //
ENTRYPOINT ["java", "-jar", "/MyDockerSpringBoot.jar"]