FROM openjdk

RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat/

RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.64/bin/apache-tomcat-9.0.64.tar.gz 
RUN tar xvf apache-tomcat-9.0.64.tar.gz 
RUN cp -r apache-tomcat-9.0.64/* /opt/tomcat/.

COPY 2caf0f4e-67a7-447d-be35-0223f5dfe7cd /home/runner/work/_temp/

EXPOSE 8080 

ENTRYPOINT ["/opt/tomcat/bin/catalina.sh","run"]

