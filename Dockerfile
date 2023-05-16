FROM openjdk:17-jdk-slim
COPY build/libs/crud.war crud.war
ENTRYPOINT ["java", "-war", "/crud.war"]
EXPOSE 8080