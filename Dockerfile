#
# Build stage
#
FROM gradle:7.3-jdk17 AS build
COPY . .
RUN gradle bootJar

#
# Package stage
#
FROM openjdk:17-jdk-slim
# ENV PORT=8080
EXPOSE 8080
COPY build/libs/tasks-0.0.1-SNAPSHOT.war /home/user/.local/tmp/buildkit-mount768793169
ENTRYPOINT ["java", "-war", "crud.war"]