# Use a base image that has Java installed
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file from the target directory to the working directory in the container
COPY target/gateway-server-0.0.1.jar /app/gateway-server-0.0.1.jar

# Specify the command to run the application
CMD java ${JAVA_OPTS} -jar gateway-server-0.0.1.jar