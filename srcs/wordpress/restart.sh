#!/bin/bash

eval $(minikube docker-env)
docker build -t wordpress_image .
kubectl delete svc wp-svc
kubectl delete deployment wp-deployment

kubectl apply -f wordpress.yaml

#docker image rm wordpress_image && \
