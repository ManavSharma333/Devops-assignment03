FROM maven:3.8.4-openjdk-21 AS build
WORKDIR /app
COPY . .
RUN mvn clean package

FROM openjdk:21-jre-slim
WORKDIR /app
COPY --from=build /app/target/Devops-assignment03.jar ./app.jar
CMD ["java", "-jar", "app.jar"]