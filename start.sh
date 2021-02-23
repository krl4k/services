#!/bin/bash

minikube delete
minikube start --vm-driver=virtualbox && \
#kubectl delete deploys --all && \
kubectl delete pods --all && \
minikube addons enable dashboard && \
minikube addons enable metallb && \
eval $(minikube docker-env) && \
docker build -t nginx_image srcs/nginx/. &&\
kubectl apply -f srcs/nginx/nginx.yaml &&\
kubectl apply -f srcs/configmap.yaml &&\

minikube dashboard




