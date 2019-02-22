#!/bin/bash
#Rotate the Nginx logs
CUR_LOGS_PATH=/home/huangjian/local/openresty/nginx/logs
LOGS_PATH=${CUR_LOGS_PATH}/history
if [ ! -d ${LOGS_PATH} ]; then
  mkdir -p ${LOGS_PATH}
fi
YESTERDAY=$(date -d "yesterday" +%Y-%m-%d)
mv ${CUR_LOGS_PATH}/access.log ${LOGS_PATH}/access_${YESTERDAY}.log
mv ${CUR_LOGS_PATH}/error.log ${LOGS_PATH}/error_${YESTERDAY}.log
# send signal USR1 to Nigix master process, to reopen logs.
kill -USR1 $(cat ${CUR_LOGS_PATH}/nginx.pid)
