FROM redis
RUN mkdir -p /var/log/redis
RUN /bin/touch /var/log/redis/redis.log
COPY redis.conf /usr/local/etc/redis/redis.conf
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
