kubectl delete svc mysql-svc
kubectl delete deployment mysql-deployment
docker image rm mysql_image
docker build -t mysql_image .
kubectl apply -f mysql.yaml