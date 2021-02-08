FROM openjdk:8
ADD prod-app.jar prod-app.jar
ENTRYPOINT ["java","-jar","prod-app.jar"]
