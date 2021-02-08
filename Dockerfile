FROM openjdk:8
ADD /var/lib/jenkins/.m2/repository/com/springboot/spring-boot-project/0.0.1-SNAPSHOT/spring-boot-project-0.0.1-SNAPSHOT.jar spring-boot-project-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","spring-boot-project-0.0.1-SNAPSHOT.jar"]
