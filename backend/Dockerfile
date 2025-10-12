# Build stage
FROM eclipse-temurin:17-jdk AS builder

WORKDIR /app

# Copy Gradle wrapper and build files first
COPY matechai/gradle ./matechai/gradle
COPY matechai/gradlew matechai/gradlew.bat matechai/build.gradle matechai/settings.gradle ./matechai/

# Copy source code
COPY matechai/src ./matechai/src

WORKDIR /app/matechai

# Run build with verbose output to help diagnose problems
RUN chmod +x ./gradlew
RUN ./gradlew clean build -x test --no-daemon --refresh-dependencies --no-parallel --stacktrace --info

# Runtime stage
FROM eclipse-temurin:17-jdk
WORKDIR /app

# Copy the built jar from the build stage
COPY --from=builder /app/matechai/build/libs/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]


# docker build -t matechai-backend .
# docker run -p 8080:8080 matechai-backend
