FROM openjdk:17
COPY . .
EXPOSE 8080
ENTRYPOINT ["./gradlew", "bootRun"]