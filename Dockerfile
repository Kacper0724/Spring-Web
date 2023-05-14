RUN ./runcrud.bat
COPY build/libs/tasks-0.0.1-SNAPSHOT.war crud.war
EXPOSE 8080