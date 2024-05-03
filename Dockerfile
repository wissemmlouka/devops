FROM eclipse-temurin:17-jdk-alpine
 
ARG JAR_FILE=./target/gestion-station-ski-1.0.jar
#ARG YAML_FILE=./src/main/resources/application.properties
WORKDIR /home/wissem/deploy
COPY ${JAR_FILE} api.jar
#COPY ${YAML_FILE} application.yaml
EXPOSE 8089
ENTRYPOINT ["java", "-jar", "api.jar"]
