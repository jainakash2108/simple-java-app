FROM openjdk:17-jdk-slim
VOLUME /tmp
COPY target/simple-java-app-*.jar app.jar
# Entrypoint is used for local startup, it will be overridden by Kubernetes.
ENTRYPOINT ["java", "-jar", "/app.jar"]
EXPOSE 8800