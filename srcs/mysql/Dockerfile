FROM alpine:3.12.3

RUN apk add --no-cache mysql
RUN apk add --no-cache mysql-client
RUN apk add --no-cache openrc
RUN rm -f /var/cache/apk/*

COPY start.sh /
RUN chmod -R 755 /start.sh

# COPY mydb.sql /
COPY my.cnf /etc/mysql


EXPOSE 3306

ENTRYPOINT ["sh", "/start.sh"]