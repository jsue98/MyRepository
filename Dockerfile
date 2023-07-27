#FROM ubuntu:latest
#LABEL authors="jsue9"
#
#ENTRYPOINT ["top", "-b"]

FROM openjdk:11
ARG JAR_FILE=build/libs/*-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar","/app.jar"]