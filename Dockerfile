FROM ubuntu:latest
MAINTAINER Haifeng Wang <hfwang at Yahoo.com>

# Postgresql DB
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list
RUN apt-get install -y wget
RUN wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y postgresql postgresql-contrib
RUN mkdir -p /opt/postgresql/tongueval
RUN chown postgres:postgres /opt/postgresql/tongueval
USER postgres
RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.5/main/pg_hba.conf
RUN /etc/init.d/postgresql start && \
 psql --command "CREATE TABLESPACE tongueval LOCATION '/opt/postgresql/tongueval';" && \
 psql --command "CREATE USER tongueval WITH PASSWORD 'changeme';"  && \
 psql --command "CREATE DATABASE tongueval OWNER=tongueval template=template0 encoding='UTF-8' TABLESPACE=tongueval;"
RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.5/main/pg_hba.conf


