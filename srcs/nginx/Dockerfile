FROM alpine:3.12.3

RUN apk add nginx openssl openrc sudo supervisor openssh bash
RUN mkdir -p /run/nginx
RUN mkdir /var/run/sshd
RUN rm -rf /etc/nginx/conf.d/default.conf

COPY index.html /var/www/
COPY shitt.png /var/www/
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY supervisord.conf /etc/supervisord.conf


RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -out nginx.crt \
    -keyout nginx.key \
    -subj "/C=RU/ST=-/L=-/O=-/OU=-/CN=ft_services"


RUN adduser -D krl4k && echo "krl4k:root" | chpasswd && addgroup krl4k wheel \
&& echo '%wheel ALL=(ALL) ALL' > /etc/sudoers.d/wheel && /usr/bin/ssh-keygen -A

EXPOSE 80 443 22
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

#  .ssh/known_host засоряется, удалить последнюю строчку
#  ssh krl4k@192.168.99.100 -p 22