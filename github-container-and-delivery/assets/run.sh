#!/bin/bash

echo "Installing Node.js 20..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash && source ~/.bashrc
nvm install 20 -y
nvm use 20 -y

echo "Installting dependencies..."
cd server/app && npm install

# Create incomplete files
touch Dockerfile
touch .github/workflows/deploy.yml

echo "All done!"
echo "You'll be working in two files: `Dockerfile` and `.github/workflows/deploy.yml`"