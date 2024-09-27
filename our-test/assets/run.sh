#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash && source ~/.bashrc
nvm install 20 -y
nvm use 20 -y
echo "All done, yeay!"