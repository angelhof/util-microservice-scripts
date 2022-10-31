#!/bin/bash

TAG=6.2
echo "Installing redis in kubernetes cluster using helm..."
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm install redis bitnami/redis --set image.tag=${TAG}
echo "Installed redis in kubernetes cluster."
