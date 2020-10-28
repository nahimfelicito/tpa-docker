FROM openjdk:8
COPY ./target/persona-0.0.1-SNAPSHOT.jar /tmp/persona-app.jar
WORKDIR /tmp
CMD ["java", "-jar", "persona-app.jar"]
