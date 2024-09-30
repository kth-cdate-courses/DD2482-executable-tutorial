# Setup Github Actions

First, create the Github Action. It can either be created in GitHub.com, under your repo > Actions or create the file in `.github\workflows\deploy.yml`The following is a template for your GitHub Action:

```yml
name: Deploy to ghcr.io

on:
  workflow_dispatch:
  push:
    branches: [main]

concurrency:
  group: deploy-${{ github.ref }} # This ensures all runs for a branch are grouped
  cancel-in-progress: true # Cancels any in-progress runs for this group

jobs:
  build:
    runs-on: ubuntu-latest
    steps: ...
```

You need to fill in the steps for the build job yourself. The following steps need to be included:
- Check out the repo
- Set up Docker BuildX
- Log in to the GitHub Container Registry
  - Ensure that you protect your credentials, e.g. by using GitHub Secrets
- Build and push

It is best practice to name the steps appropriately. 


