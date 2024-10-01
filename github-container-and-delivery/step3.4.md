# Setup Github Actions

The final step is to use Docker BuildX to build and push to GHCR. This step requires four `with`-clauses: `context`, `platforms`, `push` and `tags`. Context will in this case be `.`, platforms `linux/amd64` and `push` `true`. The attribute `tags` should be a link to GHCR, on the following format: `ghcr.io/<owner>/<repo>:latest,ghcr.io/<owner>/<repo>:${{ github.sha }}`. `<owner>` should be changed to the repository owner and `<repo>` to the repository name, in lower case.

The entire step can be found below.

```yml
- name: Build and push
  uses: docker/build-push-action@v6
  with:
    context: .
    platforms: linux/amd64
    push: true
    # github.repository_owner and github.repository are hardcoded
    tags: ghcr.io/<username>/<repo>:latest,ghcr.io/<username>/<repo>:${{ github.sha }}

```

When you are finished with this step, your entire GitHub action should look like the following:

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
    steps:
      - uses: actions/checkout@v3

      - name: Set up Docker Buildx
        uses: docker/setup-buildx-action@v3

      - name: Login to GitHub Container Registry
        uses: docker/login-action@v3
        with:
          registry: ghcr.io
          username: ${{ github.repository_owner }}
          password: ${{ secrets.GITHUB_TOKEN }}

      - name: Build and push
        uses: docker/build-push-action@v6
        with:
          context: .
          platforms: linux/amd64
          push: true
          # github.repository_owner and github.repository are hardcoded
          tags: ghcr.io/<username>/<repo>:latest,ghcr.io/<username>/<repo>:${{ github.sha }}
```