FROM eclipse-temurin:17-jdk-alpine
 
ARG JAR_FILE=./target/gestion-station-ski-1.0.jar
WORKDIR /home/wissem/deploy
COPY ${JAR_FILE} api.jar
EXPOSE 8089
ENTRYPOINT ["java", "-jar", "api.jar"]
