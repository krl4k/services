#!/bin/bash

minikube start --vm-driver=virtualbox && \
minikube addons enable dashboard && \
minikube addons enable metallb && \
eval $(minikube docker-env) && \
kubectl apply -f srcs/configmap.yaml && \
docker build -t nginx_image srcs/nginx/. && \
kubectl apply -f srcs/nginx/srcs/nginx.yaml && \
minikube dashboard




