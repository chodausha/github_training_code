FROM openjdk

RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat/

RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.64/bin/apache-tomcat-9.0.64.tar.gz 
RUN tar xvf apache-tomcat-9.0.64.tar.gz 
RUN cp -r apache-tomcat-9.0.64/* /opt/tomcat/.

COPY 00e2f7015a47781d2db0444b4a79f7993f29a762  https://github.com/chodausha/github_training_code/actions

EXPOSE 8080 

ENTRYPOINT ["/opt/tomcat/bin/catalina.sh","run"]

