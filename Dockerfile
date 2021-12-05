FROM sgrio/java-oracle

RUN apt-get update
RUN apt-get install -y maven
COPY pom.xml /usr/localservice/pom.xml
COPY src /usr/local/service/src
WORKDIR /usr/local/service
RUN mvn package
CMD ["java","-cp","taregt/"]