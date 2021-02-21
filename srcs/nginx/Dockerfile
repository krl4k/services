FROM alpine:3.12.3

RUN apk update
RUN apk upgrade
RUN apk add openssl
RUN apk add nginx
RUN apk add supervisor
RUN apk add openssh
RUN apk add openrc
RUN apk add bash

RUN openssl req -newkey rsa:2048 \
	-x509 -sha256 -days 365 -nodes \
	-out /etc/ssl/certs/example.crt \
	-keyout /etc/ssl/private/example.key\
	-subj "/C=RU/ST=Tatarstan/L=Kazan/O=Ecole/OU=21/CN=localhost"


RUN mkdir -p /run/nginx
RUN rm etc/nginx/conf.d/default.conf

# COPY supervisord.conf ./etc/
COPY /srcs/nginx.conf etc/nginx/conf.d/

# RUN ssh-keygen -A
# RUN sed -i "s/#Port 22/Port 22/g" /etc/ssh/sshd_config ;\
# sed -i "s/#HostKey \/etc\/ssh\/ssh_host_rsa_key/HostKey \/etc\/ssh\/ssh_host_rsa_key/g" /etc/ssh/sshd_config ;\
# sed -i "s/#HostKey \/etc\/ssh\/ssh_host_ecdsa_key/HostKey \/etc\/ssh\/ssh_host_ecdsa_key/g" /etc/ssh/sshd_config ;\
# sed -i "s/#HostKey \/etc\/ssh\/ssh_host_ed25519_key/HostKey \/etc\/ssh\/ssh_host_ed25519_key/g" /etc/ssh/sshd_config

# RUN adduser www ; chown -R www var/lib/nginx/html

EXPOSE 22 80 443

# CMD /usr/bin/supervisord -c ./etc/supervisord.conf
CMD ["nginx", "-g", "daemon off;"]
# CMD ["sh"]