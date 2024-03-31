# Stage 1: Build aplikasi dengan Maven
FROM maven:3.8.7-openjdk-18-slim AS build
WORKDIR /app
COPY . .
RUN mvn package -DskipTests

# Stage 2: Jalankan aplikasi dengan Java Runtime Environment (JRE)
FROM maven:3.8.7-openjdk-18-slim
COPY --from=build /app/target/*.jar /app.jar
CMD ["java", "-jar", "/app.jar"]