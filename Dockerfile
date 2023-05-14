FROM openjdk:17
COPY . .
EXPOSE 8080
CMD ["runcrud.bat"]