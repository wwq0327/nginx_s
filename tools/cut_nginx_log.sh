#!/bin/bash

logs_path="/home/wyatt/nginx/logs/"

mkdir -p $(logs_path)$(date -d "yesterday" +"%Y")/$(date -d "yesterday" +"%m")/
mv $(logs_path)access.log $(logs_path)$(date -d "yesterday "+"%Y")/$(date -d "yesterday" +"%m")/access_$(date -d "yesterday" +"%Y%m%d").log
kill -USR1 `cat /home/wyatt/nginx/logs/nginx.pid`


