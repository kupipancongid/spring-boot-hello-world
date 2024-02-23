FROM maven:3.8.7-openjdk-18
WORKDIR /app
COPY . /app
RUN mvn package -DskipTests
EXPOSE 8080
CMD ["java", "-jar", "target/hello-world-0.0.1-SNAPSHOT.jar"]
