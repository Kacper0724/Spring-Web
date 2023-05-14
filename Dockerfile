FROM openjdk:17-jdk-slim
WORKDIR /app
COPY build/libs/tasks-0.0.1-SNAPSHOT.war /app
CMD ["java", "-war", "runcrud.war"]