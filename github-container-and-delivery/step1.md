# Containerizing your application

First things first, lets create a Docker container. Docker containers are a way to package your application and its dependencies into a single image that can be run on any machine. Its very neat! To start off, open the `Dockerfile` in your text editor of choice.

## Build the Docker file

```bash
docker build -t myapp .
```

## Run the Docker container

```bash
docker run -p 127.0.0.1:80:80/tcp -t executable-tutorial
```

You should now see a message `Listening on port 80`, try to interact with the server! Run `curl http://127.0.0.1:80` to see the response.
