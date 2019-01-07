#!/bin/sh
set -e
ip=$1
port=$2
params=$#
if [ $params != 2 ]; then
        echo "must two params!"
        exit 1;
fi
data_path=/data/redis/${port}/
mkdir -p ${data_path}
if [ -f "/tmp/redis.conf" ]; then
        mv /tmp/redis.conf ${data_path}
fi
redis_conf=${data_path}redis.conf
sed -i "s/{port}/${port}/g" ${redis_conf}
sed -i "s/{ip}/${ip}/g" ${redis_conf}
redis-server ${redis_conf}
