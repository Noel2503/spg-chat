# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# set shell to bash
# source: https://stackoverflow.com/a/40944512/3128926
RUN apt update && apt-get install -y bash

# Set the working directory to /app
WORKDIR /app

# Copy the fat jar into the container at /app
COPY /target/chat-app-0.0.1-SNAPSHOT.jar /app

# Make port 8080 available to the world outside this container
EXPOSE 3001

# Run jar file when the container launches
CMD ["java", "-jar", "chat-app-0.0.1-SNAPSHOT.jar"]
