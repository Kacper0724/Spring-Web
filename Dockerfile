FROM tomcat:9.0.74
COPY runcrud.bat ./
RUN "./runcrud.bat"
CMD ["./runcrud.bat"]