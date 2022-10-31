#!/bin/bash

echo "Installing dapr..."
wget -q https://raw.githubusercontent.com/dapr/cli/master/install/install.sh -O - | /bin/bash
echo "dapr successfully installed"

