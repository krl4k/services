kubectl delete svc phpmyadmin-svc
kubectl delete deployment phpmyadmin-deployment
#kubectl delete pods nginx-phpmyadmin-865d885ff7-vjqsv
docker image rm phpmyadmin_image
docker build -t phpmyadmin_image .
kubectl apply -f phpmyadmin.yaml