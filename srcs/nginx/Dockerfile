FROM alpine:3.12.3

RUN apk update
RUN apk upgrade
RUN apk add openssl
RUN apk add nginx
RUN apk add supervisor
RUN apk add openrc
RUN apk add openssh
RUN apk add bash

RUN sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
  && echo "root:root" | chpasswd \
  && /usr/bin/ssh-keygen -A \
  && ssh-keygen -t rsa -b 4096 -f  /etc/ssh/ssh_host_key

RUN openssl req -newkey rsa:2048 \
	-x509 -sha256 -days 365 -nodes \
	-out /etc/ssl/certs/example.crt \
	-keyout /etc/ssl/private/example.key\
	-subj "/C=RU/ST=Tatarstan/L=Kazan/O=Ecole/OU=21/CN=localhost"

#nginx
RUN mkdir -p /run/nginx
RUN rm etc/nginx/conf.d/default.conf
# COPY /srcs/nginx.conf etc/nginx/conf.d/
COPY /srcs/nginx.conf etc/nginx/

#supervisord
COPY /srcs/supervisord.conf /etc/supervisord.conf


EXPOSE 22 80 443
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
