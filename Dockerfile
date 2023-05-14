FROM gradle:7.6-jdk
COPY . .
RUN gradle bootJar

FROM tomcat:9.0.74
COPY ./ build/libs/crud.war
CMD ["./crud.war"]
