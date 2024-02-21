# Use a base image that includes Maven, as well as the JDK
FROM maven:3.6.3-openjdk-11

# Set the working directory in the container
WORKDIR /app

# Copy the pom.xml and source code into the container
COPY pom.xml .
COPY src src

# Build the application
RUN mvn clean package

# The target directory is where Maven places the built jar
CMD ["java", "-jar", "target/sepainst-poc.jar"]
