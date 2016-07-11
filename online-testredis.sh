dockerip=`docker inspect redis0 |jq -r .[0].NetworkSettings.IPAddress`

docker run --rm -p 9091:8080 -e redisserver=$dockerip  -v $PWD/work:/code aadebuger/openresty /bin/bash -c "nginx -p /code -c /code/conf/nginxredis.conf;sleep 20"
