FROM ubuntu:20.04 as tutorial-zabbix

ARG DEBIAN_FRONTEND=noninteractive

# locales
RUN apt-get  update
RUN apt-get install -y language-pack-ja
RUN locale-gen ja_JP.UTF-8
RUN update-locale LANG=ja_JP.UTF-8


# install zabbix
RUN apt-get install -y wget
RUN wget https://repo.zabbix.com/zabbix/6.2/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.2-2%2Bubuntu20.04_all.deb
RUN dpkg -i zabbix-release_6.2-2+ubuntu20.04_all.deb
RUN apt-get update
RUN apt-get install -y zabbix-server-pgsql zabbix-frontend-php php7.4-pgsql zabbix-nginx-conf zabbix-sql-scripts

RUN apt-get install -y curl lsb-release
RUN apt-get install -y vim

RUN mkdir /root/workspace
WORKDIR /root/workspace

RUN apt-get install -y nginx
RUN apt-get install -y lsof net-tools

# nginx port 80 -> 81 to avoid port conflicts on the host
COPY volumes/tools/default .
RUN cp default /etc/nginx/sites-enabled/default
RUN rm -f default

# db initialize scripts
RUN apt-get install -y gzip
#RUN zcat /usr/share/doc/zabbix-sql-scripts/postgresql/server.sql.gz > create.sql


