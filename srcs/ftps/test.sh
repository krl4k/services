eval $(minikube docker-env)
kubectl delete svc ftps-svc
kubectl delete deployment ftps-deployment
docker image rm ftps_image
docker build -t ftps_image .
kubectl apply -f ftps.yaml
