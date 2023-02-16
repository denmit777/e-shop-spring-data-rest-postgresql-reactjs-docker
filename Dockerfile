FROM maven:3.8.6-jdk-8 as MAVEN_BUILD

ADD ./pom.xml pom.xml
ADD ./src src/

RUN mvn clean package

CMD ["mvn", "clean", "tomcat7:run"]