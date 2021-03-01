#!/bin/bash

kubectl delete pods --all && \
eval $(minikube docker-env) && \
docker build -t nginx_image srcs/nginx/. &&\
docker build -t phpmyadmin_image srcs/phpmyadmin/. &&\
docker build -t mysql_image srcs/mysql/. && \
docker build -t wordpress_image srcs/wordpress/. && \
docker build -t ftps_image srcs/ftps/. && \
kubectl apply -f srcs/nginx/nginx.yaml &&\
kubectl apply -f srcs/phpmyadmin/phpmyadmin.yaml &&\
kubectl apply -f srcs/wordpress/wordpress.yaml &&\
kubectl apply -f srcs/mysql/mysql.yaml &&\
kubectl apply -f srcs/ftps/ftps.yaml &&\
kubectl apply -f srcs/configmap.yaml &&\
minikube dashboard