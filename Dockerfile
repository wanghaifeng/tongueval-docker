FROM ubuntu:latest
MAINTAINER Haifeng Wang <hfwang at yahoo.com>

# Postgresql DB
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list
RUN apt-get install -y wget
RUN wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -

RUN apt-get update
RUN apt-get upgrade -y

#ffmpeg OR avconv, used for audio file convert
RUN apt-get install -y libav-tools

RUN cd /opt && \
  wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.tar.gz && \
  tar zxvf jdk-8u45-linux-x64.tar.gz

RUN cd /opt && \
  wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.33/bin/apache-tomcat-8.0.33.tar.gz && \
  tar zxvf apache-tomcat-8.0.33.tar.gz

RUN rm -f /opt/*.gz

COPY res/* /opt/apache-tomcat-8.0.33/webapps/ROOT/

RUN apt-get install -y postgresql postgresql-contrib
RUN mkdir -p /opt/postgresql/tongueval
RUN chown postgres:postgres /opt/postgresql/tongueval

COPY ./tongueval.sql /opt
COPY ./res/web.xml /opt/apache-tomcat-8.0.33/conf/
COPY ./res/server.xml /opt/apache-tomcat-8.0.33/conf/
COPY ./MyDSKeyStore.jks /opt/apache-tomcat-8.0.33/conf/

USER postgres 

COPY ./res/pg_hba.conf /etc/postgresql/9.5/main/pg_hba.conf
RUN /etc/init.d/postgresql start && \
 psql --command "CREATE TABLESPACE tongueval LOCATION '/opt/postgresql/tongueval';" && \
 psql --command "CREATE USER tongueval WITH PASSWORD 'password';"  && \
 psql --command "CREATE DATABASE tongueval OWNER=tongueval template=template0 encoding='UTF-8' TABLESPACE=tongueval;" && \
 psql -U tongueval  tongueval < /opt/tongueval.sql

USER root

COPY *.war /opt/apache-tomcat-8.0.33/webapps/
EXPOSE 8080 8443

CMD export JAVA_HOME=/opt/jdk1.8.0_45 && /etc/init.d/postgresql start && /opt/apache-tomcat-8.0.33/bin/startup.sh && tail -f /opt/apache-tomcat-8.0.33/logs/catalina.out




 


