FROM openjdk:17-jdk-slim
COPY /home/build/libs/crud.war crud.war
ENTRYPOINT ["java", "-war", "/crud.war"]
EXPOSE 8080