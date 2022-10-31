#!/bin/bash

ARCH=amd64
OS=ubuntu
echo "Installing docker arch=${ARCH} os=${OS}..."
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt install -y docker-ce
sudo usermod -aG docker ${USER}
echo "Docker successfully installed"
echo "NOTE: To see the user-group modifications you need to first relogin using:"
echo '```sh'
echo '  sudo su - ${USER}'
echo '```'