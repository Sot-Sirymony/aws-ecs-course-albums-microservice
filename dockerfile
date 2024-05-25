FROM openjdk:21-slim
VOLUME /tmp 
COPY target/photo-albums-0.0.1-SNAPSHOT.jar photo-albums-microservice.jar 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/photo-albums-microservice.jar"] 
