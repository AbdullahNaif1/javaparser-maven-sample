# Use a base image with Java pre-installed
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy your JAR file into the container (assuming it's in the same directory)
COPY *.jar /app/

# Specify the command to run your Java application
CMD ["java", "-jar", "*.jar"]
