#!/bin/bash
#Rotate the Nginx logs

logs_path=/home/huangjian/local/openresty/nginx/logs #Nginx 的日志目录
backup_path=${logs_path}/history #Nginx 日志的备份目录
expire_backup_delete="ON" #是否开启过期备份删除 ON为开启 OFF为关闭
expire_days=3 #过期时间天数 默认为三天，此项只有在expire_backup_delete开启时有效

if [ ! -d ${backup_path} ]; then
  mkdir -p ${backup_path}
fi
YESTERDAY=$(date -d "yesterday" +%Y-%m-%d)
mv ${logs_path}/access.log ${backup_path}/access_${YESTERDAY}.log
mv ${logs_path}/error.log ${backup_path}/error_${YESTERDAY}.log
# send signal USR1 to Nigix master process, to reopen logs.
kill -USR1 $(cat ${logs_path}/nginx.pid)

if [ "$expire_backup_delete" == "ON" -a  "$backup_path" != "" ]; then
  `find $backup_path/ -type d -mtime +$expire_days | xargs rm -rf`
fi
