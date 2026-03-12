# Use OpenJDK 17 slim image

FROM eclipse-temurin:17-jdk

# Set working directory inside the container
WORKDIR /app

# Copy JAR from target folder (replace myapp.jar with your actual JAR name)
COPY target/myapp.jar app.jar


# Expose your Spring Boot port
EXPOSE 8761

# Command to run the app
ENTRYPOINT ["java","-jar","app.jar"]