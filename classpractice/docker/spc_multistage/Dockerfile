### multistage build
# first build the package
FROM maven:3.9.6-amazoncorretto-17 as build
RUN  yum install git -y
RUN git clone https://github.com/spring-projects/spring-petclinic.git && \
    cd spring-petclinic && \
    mvn package
# check the jar location
# /spring-petclinic/target/spring-petclinic-*.jar
FROM maven:3.9.6-amazoncorretto-17
LABEL project="spc"  
COPY --from=build /spring-petclinic/target/spring-petclinic-*.jar /spring-petclinic-*.jar
EXPOSE 8080
CMD [ "java","-jar","/spring-petclinic-*.jar" ]
