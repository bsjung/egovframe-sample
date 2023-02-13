FROM tomcat:8
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk maven
copy . .
RUN mvn -X package
ADD target/ROOT.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
