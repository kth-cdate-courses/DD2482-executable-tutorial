#!/bin/bash

# Disable command echoing
set +x

echo "Installing Node.js 20..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash && source ~/.bashrc
nvm install 20 -y
nvm use 20 -y

echo "Installting dependencies..."
cd server/app && npm install
clear 

# Create incomplete files
touch server/Dockerfile
mkdir -p server/.github/workflows
touch server/.github/workflows/deploy.yml

echo "All done!"
echo "You'll be working in two files: 'Dockerfile' and '.github/workflows/deploy.yml'"