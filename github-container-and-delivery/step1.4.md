# Containerizing your application

## Testing the container

Great the docker file is done! Let's get it up and running!

To build the container run:

```bash
docker build -t myapp .
```

This will build the container and tag it with the name `myapp`. The `.` at the end of the command is the path to the Dockerfile, in this case the current directory since we're located in the same directory as the Dockerfile.

To run the container run:

```bash
docker run -p 127.0.0.1:80:80/tcp -t myapp
```

This will start the container and map port 80 on the host to port 80 in the container.

Now without terminating the container, verify that is it correct by clicking "check" below.
