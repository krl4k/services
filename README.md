# services

Ft_services will introduce you to Kubernetes. You will discover cluster management and
deployment with Kubernetes. You will virtualize a network and do "clustering".

# Installing

### Oh-My-Zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### HomeBrew
    curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh

### kubectl
    https://kubernetes.io/ru/docs/tasks/tools/install-kubectl/#%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0-kubectl-%D0%B2-macos

    or

    brew install kubectl

### Minicube
    https://kubernetes.io/ru/docs/tasks/tools/install-minikube/


## All
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh
    brew install kubectl
    brew install minikube


# K8S

## create
    kubectl create -f <filenane.yaml> 
    kubectl get <name.apps>

## apply
    kubectl apply -f <filenane.yaml>

## delete 
    kubectl delete --all
    docker rmi $(docker images -a -q)
## info
    kubectl describe ...
