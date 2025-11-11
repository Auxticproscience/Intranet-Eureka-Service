# Etapa 1: construir el JAR con Maven
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app

# Copiar archivos necesarios
COPY pom.xml .
COPY src ./src

# Construir el JAR, saltando tests
RUN mvn clean package -DskipTests

# Etapa 2: ejecutar el JAR
FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8761
ENTRYPOINT ["java", "-jar", "app.jar"]
