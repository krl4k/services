#docker image rm grafana_image
kubectl delete svc grafana-svc
kubectl delete deployment grafana-deployment
kubectl delete pods grafana
docker build -t grafana_image .
kubectl apply -f grafana.yaml