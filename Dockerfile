FROM openjdk:8
ADD /var/lib/jenkins/workspace/docker-jenkins-integration/target/prod-app.jar prod-app.jar
ENTRYPOINT ["java","-jar","prod-app.jar"]
