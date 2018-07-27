FROM openjdk:8-alpine

ENV TZ=Europe/Brussels
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /srv
COPY ./biotope-tools.jar application.jar
CMD java -jar application.jar