# Setup Github Actions

The next step is to set up Docker BuildX. It is a more modern version of `docker build`.
 

Building a Docker image can be done by using 

```yml
- name: Setup Docker BuildX 
  uses: docker/setup-buildx-action@v3
```

