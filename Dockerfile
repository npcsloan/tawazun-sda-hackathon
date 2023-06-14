FROM maven:3.8.6-openjdk-11 as maven

WORKDIR /app
COPY pom.xml .
COPY . .
RUN mvn package

EXPOSE 8080
ENTRYPOINT ["java","-jar","target/tawazun.war"]