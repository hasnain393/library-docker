# Use OpenJDK 8 as the base image
FROM openjdk:8-jdk-alpine


ADD target/library-0.0.1-SNAPSHOT.jar library-0.0.1-SNAPSHOT.jar

# Expose the port that your application uses
EXPOSE 9195

# Run the jar file
ENTRYPOINT ["java", "-jar", "/library-0.0.1-SNAPSHOT.jar"]
