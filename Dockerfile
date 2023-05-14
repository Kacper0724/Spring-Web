FROM tomcat:9.0.74
COPY ./build/libs/tasks-0.0.1-SNAPSHOT.war ./
ADD ./tasks-0.0.1-SNAPSHOT.war crud.war
EXPOSE 8080
CMD ["runcrud.bat"]