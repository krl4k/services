#!/bin/bash

minikube start --vm-driver=virtualbox && \
minikube addons enable dashboard && \
minikube addons enable metallb && \


eval $(minikube docker-env) && \

kubectl apply -f configmap.yaml && \




docker build -t nginx_image srcs/nginx/. &&\
kubectl apply -f nginx/nginx.yaml && \

minikube dashboard




