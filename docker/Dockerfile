FROM ubuntu:20.04 as tutorial-zabbix

ARG DEBIAN_FRONTEND=noninteractive


# install zabbix
RUN apt-get  update
RUN apt-get install -y wget
RUN wget https://repo.zabbix.com/zabbix/6.2/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.2-1%2Bubuntu20.04_all.deb
RUN dpkg -i zabbix-release_6.2-1+ubuntu20.04_all.deb
RUN apt-get update
RUN apt-get install -y zabbix-server-pgsql zabbix-frontend-php php7.4-pgsql zabbix-nginx-conf zabbix-sql-scripts 

RUN apt-get install -y curl lsb-release
RUN apt-get install -y vim
#RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
#RUN apt-get -y install ca-certificates gnupg
#RUN curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
#	&& apt-get update
#RUN apt-get -y install postgresql-14

# install postgresql
RUN mkdir /root/workspace
WORKDIR /root/workspace

COPY volumes/tools/zabbix.conf .
RUN cp zabbix.conf /etc/zabbix/nginx.conf
RUN rm -f zabbix.conf

#CMD /root/workspace/tools/run.bash
