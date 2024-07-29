
# Use the official OpenJDK image as a parent image
FROM openjdk:17-jdk-alpine
#Base Image: openjdk:17-jdk-alpine provides a lightweight environment with JDK 17.


# Set the working directory in the container
WORKDIR /app
#Working Directory: /app is set as the working directory inside the container.

# Copy the JAR file into the container
COPY build/libs/BookStore-0.0.1-SNAPSHOT.jar app.jar
# Copy JAR: Copies the built JAR file from the build/libs directory into the container.
# 'app.jar' in the Dockerfile is a way of renaming the JAR file inside the Docker image to a consistent name.

# Expose the port that the application runs on
EXPOSE 8080
# Expose Port: Exposes port 8080, which is the default port for Spring Boot applications.

# Define the command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
# Run Command: Uses java -jar to run the JAR file.