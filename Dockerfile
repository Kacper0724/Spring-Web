FROM openjdk:17-jdk-slim
COPY build/libs/crud.war app.war
ENTRYPOINT ["java", "-war", "/app.war"]
EXPOSE 8080