docker run --rm -p 9091:8080 -v $PWD/work:/code aadebuger/openresty /bin/bash -c "nginx -p /code -c /code/conf/nginx.conf;sleep 10"
