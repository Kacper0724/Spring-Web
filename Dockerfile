FROM openjdk:17-jdk-slim
COPY ./ build/libs/crud.war
RUN ["./gradle", "bootRun"]