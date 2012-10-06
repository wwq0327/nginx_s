#!/usr/bin/env bash 
sudo kill -HUP `cat /home/wyatt/nginx/logs/nginx.pid`
sudo /usr/sbin/nginx -c /home/wyatt/nginx/nginx.conf

