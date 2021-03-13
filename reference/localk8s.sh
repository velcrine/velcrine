microk8s enable dns storage
microk8s reset --destroy-storage
microk8s enable host-access:ip=128.0.0.1

#minikube refs
minikube start --kubernetes-version v1.7.0
minikube config set memory 8192
minikube config set cpus 2

