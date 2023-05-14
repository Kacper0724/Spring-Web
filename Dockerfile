#
# Build stage
#
FROM gradle:7.3-jdk17 AS build
COPY . .
RUN gradle clean build -i --stacktrace

#
# Package stage
#
FROM openjdk:17-jdk-slim
COPY --from=build /target/tasks-0.0.1-SNAPSHOT.war crud.war
# ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["./gradlew", "bootRun"]