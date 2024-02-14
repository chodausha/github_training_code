FROM openjdk

RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat/

RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.64/bin/apache-tomcat-9.0.64.tar.gz 
RUN tar xvf apache-tomcat-9.0.64.tar.gz 
RUN cp -r apache-tomcat-9.0.64/* /opt/tomcat/.

COPY my-app 2.0-SNAPSHOT /home/runner/work/github_training_code/github_training_code/target/

EXPOSE 8080 

ENTRYPOINT ["/opt/tomcat/bin/catalina.sh","run"]

