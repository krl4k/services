#   image
FROM alpine:3.12.3

#   install the necessary utilities
RUN apk update
RUN apk upgrade
RUN apk add nginx
RUN apk add openssl
RUN apk add openrc
RUN apk add supervisor
RUN apk add sudo
RUN apk add openssh
RUN apk add bash
RUN apk add vim

#   NGINX
RUN mkdir -p /run/nginx
RUN mkdir /var/run/sshd
RUN rm -rf /etc/nginx/conf.d/default.conf

# html in welcome nginx page
COPY index.html /var/www/
COPY nginx.conf /etc/nginx/conf.d/default.conf

#   supervisord
COPY supervisord.conf /etc/supervisord.conf

#   ssl key
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -out nginx.crt \
    -keyout nginx.key \
    -subj "/C=RU/ST=-/L=-/O=-/OU=-/CN=ft_services"

#   ssh (22 port use)
RUN adduser -D krl4k && echo "krl4k:root" | chpasswd &&  addgroup krl4k wheel && echo '%wheel ALL=(ALL) ALL' > /etc/sudoers.d/wheel && /usr/bin/ssh-keygen -A


EXPOSE 80 443 22

#   supervisord
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

#  .ssh/known_host засоряется, удалить последнюю строчку
#  ssh krl4k@192.168.99.100 -p 22