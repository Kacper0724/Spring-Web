FROM openjdk:17-headless
COPY . .
EXPOSE 8080
ENTRYPOINT ["./gradlew", "bootRun"]