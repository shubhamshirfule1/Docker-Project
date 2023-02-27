From maven:latest
WORKDIR /app
COPY ..
RUN cd /app && mvn clean install -Dskiptests
CMD ["java","-jar","/app/target/spring-petclinic-2.7.0-SNAPSHOT.jar"]

