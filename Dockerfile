FROM openjdk:21
ADD target/devops-assignment03.jar devops-assignment03.jar\
ENTRYPOINT ["java","-jar","devops-assignment03.jar"]