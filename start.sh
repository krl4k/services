#!/bin/bash

minikube delete
minikube start --vm-driver=virtualbox --memory=4096 CPUs=3 && \
#kubectl delete deploys --all && \
kubectl delete pods --all && \
minikube addons enable dashboard && \
minikube addons enable metallb && \
eval $(minikube docker-env) && \
docker build -t nginx_image srcs/nginx/. &&\
docker build -t phpmyadmin_image srcs/phpmyadmin/. &&\
docker build -t mysql_image srcs/mysql/. &&\

kubectl apply -f srcs/nginx/nginx.yaml &&\
kubectl apply -f srcs/phpmyadmin/phpmyadmin.yaml &&\
kubectl apply -f srcs/mysql/mysql.yaml &&\
kubectl apply -f srcs/configmap.yaml &&\

minikube dashboard




