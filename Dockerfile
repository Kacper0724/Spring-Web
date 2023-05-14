FROM tomcat:9.0.74
COPY ./ build/libs/crud.war
EXPOSE 8080