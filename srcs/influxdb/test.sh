eval $(minikube docker-env)
kubectl delete svc influxdb-svc
kubectl delete deploy influxdb
docker image rm influxdb_image
docker build -t influxdb_image .
kubectl apply -f influxdb.yaml