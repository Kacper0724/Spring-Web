FROM gradle:7.6-jdk
COPY . .
RUN gradle bootJar

FROM openjdk:17-jdk-slim
COPY ./ build/libs/crud.war
ENTRYPOINT ["java", "-war", "crud.war"]