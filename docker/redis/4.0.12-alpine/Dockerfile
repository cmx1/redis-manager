FROM redis:4.0.12-alpine
MAINTAINER reason.h.duan@newegg.com

RUN apk add --no-cache curl
RUN curl -o /tmp/redis.conf https://raw.githubusercontent.com/ngbdf/redis-manager/master/docker/redis/redis.conf \
 && mkdir /usr/local/redis \
 && curl -o /usr/local/redis/start.sh https://raw.githubusercontent.com/ngbdf/redis-manager/master/docker/redis/start.sh

ENTRYPOINT ["sh","/usr/local/redis/start.sh"]