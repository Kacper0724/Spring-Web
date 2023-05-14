#
# Build stage
#
FROM gradle:7.3-jdk17 AS build
COPY . .
RUN ./gradlew bootJar --no-daemon

#
# Package stage
#
FROM openjdk:17-jdk-slim
# ENV PORT=8080
EXPOSE 8080
COPY --from=build /build/libs/tasks-0.0.1-SNAPSHOT.war crud.war
ENTRYPOINT ["java", "-war", "crud.war"]