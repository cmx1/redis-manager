FROM redis:5.0.3-alpine
MAINTAINER reason.h.duan@newegg.com

RUN apk add --no-cache curl
RUN curl -o /tmp/redis.conf https://raw.githubusercontent.com/ngbdf/redis-manager/docker/docker/redis/5.0.3-alpine/redis.conf \
 && mkdir /usr/local/redis \
 && curl -o /usr/local/redis/start.sh https://raw.githubusercontent.com/ngbdf/redis-manager/docker/docker/redis/5.0.3-alpine/start.sh

ENTRYPOINT ["sh","/usr/local/redis/start.sh"]