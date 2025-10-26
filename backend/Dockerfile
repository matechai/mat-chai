# Build stage
FROM eclipse-temurin:17-jdk AS builder

WORKDIR /app


# Copy source code
COPY matechai ./matechai

WORKDIR /app/matechai

# Run build with verbose output to help diagnose problems
RUN chmod +x ./gradlew
RUN ./gradlew clean build -x test --no-daemon --refresh-dependencies --no-parallel --stacktrace --info

# Runtime stage
FROM eclipse-temurin:17-jdk
WORKDIR /app

# Copy the built jar from the build stage
COPY --from=builder /app/matechai/build/libs/*.jar app.jar

# Create uploads directory with proper permissions
RUN mkdir -p /app/uploads/profiles && \
    chmod -R 777 /app/uploads

ENTRYPOINT ["java", "-jar", "app.jar"]


# docker build -t matechai-backend .
# docker run -p 8080:8080 matechai-backend
