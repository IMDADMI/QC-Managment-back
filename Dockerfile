FROM openjdk:17

WORKDIR /app


COPY target/projet-0.0.1-SNAPSHOT.jar .

CMD ["java", "-jar", "projet-0.0.1-SNAPSHOT.jar"]
