FROM openjdk:7.6.0-jdk17
WORKDIR /home/gradle/project

COPY matechai ./

RUN gradle build -x test

FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app

# Copy built jar from the Gradle build stage
COPY --from=build /home/gradle/project/build/libs/*.jar app.jar



ENTRYPOINT ["java", "-jar", "/app.jar"]