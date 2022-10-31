#!/bin/bash

ARCH=amd64
OS=ubuntu
MINIKUBE_VERSION=latest
echo "Installing minikube version ${MINIKUBE_VERSION} arch=${ARCH} os=${OS}..."
# minikube
curl -LO https://storage.googleapis.com/minikube/releases/${MINIKUBE_VERSION}/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
rm minikube-linux-amd64
echo "minikube successfully installed"
