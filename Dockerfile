FROM adoptopenjdk/openjdk11:jre-11.0.6_10-alpine

WORKDIR /app
COPY target/library-0.0.1-SNAPSHOT.jar ./library-0.0.1-SNAPSHOT.jar

# Expose the port that your application uses
EXPOSE 9195

# Run the jar file
ENTRYPOINT ["java", "-jar", "library-0.0.1-SNAPSHOT.jar"]
