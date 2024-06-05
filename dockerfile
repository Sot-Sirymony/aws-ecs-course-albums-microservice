# Use the official OpenJDK image from the Docker Hub
FROM openjdk:21-slim

# Set the working directory
WORKDIR /opt/app

# Create a volume to store temporary files
VOLUME /tmp

# Copy the application jar to the container
COPY target/photo-albums-0.0.1-SNAPSHOT.jar albums-microservice.jar

# Expose the port the application runs on
EXPOSE 8081

# Set the entrypoint to run the application
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "albums-microservice.jar"]



