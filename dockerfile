# Use a base image with JDK
FROM openjdk:24-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Define a build-time argument
ARG imageName

# Set an environment variable using the build-time argument
ENV IMAGE_NAME=${imageName}

# Copy the JAR file from the build context to the container
COPY target/${IMAGE_NAME}.jar /app/${IMAGE_NAME}.jar

# Set the entry point to run the JAR file
ENTRYPOINT ["sh", "-c", "java -jar /app/${IMAGE_NAME}.jar"]