# Use a base image with JDK
FROM openjdk:24-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file directly using its actual name
COPY target/directory-service-latest.jar /app/directory-service-latest.jar

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/directory-service-latest.jar"]






# docker build --build-arg imageName=api-gateway-github-action-0.0.1-SNAPSHOT -t dnyanyog.org/api-gateway:latest .  
# docker run -d --name api-gateway -p 8080:8080 dnyanyog.org/api-gateway:latest
# docker tag dnyanyog.org/api-gateway:latest zodgevv/api-gateway:latest
#  docker images | Select-String "zodgevv"