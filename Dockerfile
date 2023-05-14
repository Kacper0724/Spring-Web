FROM ubuntu:lastest AS build
RUN apt-get update
RUN apt-get install openjdk-17-jdk -y
COPY . .
RUN ./gradlew bootJar --no-daemon

FROM openjdk:17-jdk-slim
EXPOSE 8080
COPY --from=build /build/libs/tasks-0.0.1-SNAPSHOT.war crud.war
ENTRYPOINT ["java", "-war", "crud.war"]