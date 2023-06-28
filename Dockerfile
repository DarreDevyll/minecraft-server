FROM alpine:latest

RUN mkdir /server
VOLUME /server
WORKDIR '/server'
# Install OpenJDK-8
RUN apk update && apk upgrade
RUN apk add openjdk17
COPY . .

#RUN java -jar minecraft_server.1.12.2.jar

ENTRYPOINT ["java", "-jar", "server.jar"]

EXPOSE 25565