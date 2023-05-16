FROM openjdk:17-jdk-slim
COPY ./ build/libs/crud.war
RUN ["./gradlew", "bootRun"]