FROM alpine

RUN apk --update add openjdk8-jre
CMD ["/usr/bin/java", "-version"]

COPY configuration.yml /opt/app/
COPY rest-dropwizard-1.0-SNAPSHOT.jar /opt/app/
WORKDIR /opt/app/

EXPOSE 8080

ENTRYPOINT exec java -jar rest-dropwizard-1.0-SNAPSHOT.jar server configuration.yml