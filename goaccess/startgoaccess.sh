#! /bin/bash
# goaccess access.log -c
# goaccess access.log -o report.html --log-format=COMBINED
goaccess /home/huangjian/local/nginx/logs/access.log -o /home/huangjian/local/nginx/www/html/report.html --log-format=COMBINED --real-time-html --addr=localhost --port=7890



