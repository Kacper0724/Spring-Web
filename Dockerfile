FROM openjdk:17-jdk-slim
COPY app.war build/libs/crud.war
ENTRYPOINT ["java", "-war", "/app.war"]
EXPOSE 8080