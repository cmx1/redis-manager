FROM redis:4.0.12-alpine
MAINTAINER reason.h.duan@newegg.com

RUN apk add --no-cache curl
RUN curl -o /tmp/redis.conf https://raw.githubusercontent.com/ngbdf/redis-manager/docker/docker/redis/4.0.12-alpine/redis.conf \
 && mkdir /usr/local/redis \
 && curl -o /usr/local/redis/start.sh https://raw.githubusercontent.com/ngbdf/redis-manager/docker/docker/redis/4.0.12-alpine/start.sh

ENTRYPOINT ["sh","/usr/local/redis/start.sh"]