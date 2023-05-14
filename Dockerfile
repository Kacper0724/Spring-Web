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
COPY ./ runcrud.bat
# ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["java","-bat","runcrud.bat"]