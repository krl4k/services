eval $(minikube docker-env) && \

kubectl apply -f srcs/nginx/nginx.yaml &&\
kubectl apply -f srcs/phpmyadmin/phpmyadmin.yaml &&\
kubectl apply -f srcs/wordpress/wordpress.yaml &&\
kubectl apply -f srcs/mysql/mysql.yaml &&\
kubectl apply -f srcs/ftps/ftps.yaml &&\
kubectl apply -f srcs/grafana/grafana.yaml &&\
kubectl apply -f srcs/influxdb/influxdb.yaml &&\
kubectl apply -f srcs/configmap.yaml &&\
minikube dashboard