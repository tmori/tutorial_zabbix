#!/bin/bash

chown www-data /etc/zabbix/web 
chgrp www-data /etc/zabbix/web 

service php7.4-fpm start
service zabbix-server start 
service nginx start
