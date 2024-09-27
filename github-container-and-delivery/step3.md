# Setup Github Actions

- first, create the Dockerfile

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
