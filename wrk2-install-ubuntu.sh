#!/bin/bash


OS=ubuntu
echo "Installing wrk2 os=${OS}..."
sudo apt install -y luarocks git make
git clone https://github.com/giltene/wrk2.git
( cd wrk2; make -j)
sudo luarocks install  https://raw.githubusercontent.com/tiye/json-lua/main/json-lua-0.1-4.rockspec
sudo luarocks install luasocket
sudo luarocks install uuid
echo "wrk2 successfully installed"

