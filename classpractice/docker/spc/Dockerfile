FROM ubuntu:22.04
RUN apt update
RUN apt install fontconfig openjdk-17-jre -y
COPY spring-petclinic-2.4.2.jar .
EXPOSE 8080
CMD [ "java","-jar","/spring-petclinic-2.4.2.jar" ]