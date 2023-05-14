#
# Build stage
#
FROM gradle:7.6-jdk17 as cache
RUN mkdir -p /home/gradle/cache_home
ENV GRADLE_USER_HOME /home/gradle/cache_home
COPY build.gradle /home/gradle/java-code/
WORKDIR /home/gradle/java-code
RUN gradle clean build -i --stacktrace

FROM gradle:7.6-jdk17 as builder
COPY --from=cache /home/gradle/cache_home /home/gradle/.gradle
COPY ./usr/src/java-code/
COPY .env /usr/src/java-code/
WORKDIR /usr/src/java-code
RUN gradle bootJar -i --stacktrace

#
# Package stage
#
FROM openjdk:17-jdk-slim
EXPOSE 8080
USER root
WORKDIR /usr/src/java-app
COPY --from=builder /usr/src/java-code/build/libs/tasks-0.0.1-SNAPSHOT.jar crud.jar
ENTRYPOINT ["./gradlew", "bootRun"]