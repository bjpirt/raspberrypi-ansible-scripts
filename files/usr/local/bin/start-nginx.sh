#!/bin/sh

set-readwrite
ln -s /tmp /var/log/nginx
set-readonly
/usr/sbin/nginx -t -q -g 'daemon on; master_process on;'
