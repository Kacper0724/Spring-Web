FROM maven:3.8.2-jdk-11 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests

FROM openjdk:11-jdk-slim
COPY --from=build build/libs/tasks-0.0.1-SNAPSHOT.war crud.war
EXPOSE 8080
ENTRYPOINT ["java","-war","crud.war"]