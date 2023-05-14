#
# Build stage
#
FROM gradle:7.6-jdk17 AS build
COPY . .
RUN gradle bootJar

#
# Package stage
#
FROM openjdk:17-jdk-slim
COPY ./ build/libs/crud.war
# ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["java","-war","crud.war"]