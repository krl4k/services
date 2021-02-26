FROM alpine:3.12.3

RUN apk add --no-cache mysql
RUN apk add --no-cache mysql-client
RUN apk add --no-cache sudo
RUN apk add --no-cache vim
RUN apk add --no-cache openrc
RUN rm -f /var/cache/apk/*

COPY start.sh /
RUN chmod -R 755 /start.sh

COPY my_db.sql /
RUN chmod -R 755 /my_db.sql

COPY my.cnf /etc/mysql

VOLUME ["/var/lib/"]
VOLUME ["/sys/fs/cgroup"]


EXPOSE 3306

ENTRYPOINT ["sh", "/start.sh"]