# Setup Github Actions

The second to last step is to login to the registry, GHCR in this case. This step requires three `with`-clauses: `registry`, `username` and `password`. The full step can be written as: 

```yml
- name: Login to GHCR
  uses: docker/login-action@v3
  with:
    registry: ghcr.io
    username: ${{ github.repository_owner }}
    password: ${{ secrets.GITHUB_TOKEN }}
```
