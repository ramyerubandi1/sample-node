FROM openjdk:17-jdk-slim

WORKDIR /app

COPY HelloDocker.java .

RUN apt-get update

RUN openjdk:17-jdk-slim install

RUN javac HelloDocker.java

CMD ["java", "HelloDocker"]
