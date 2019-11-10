#/bin/bash

# Initializes cluster master node
kubeadm init --apiserver-advertise-address $(hostname -i)

# Initialize cluster networking
kubectl apply -n kube-system -f \
    "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"

