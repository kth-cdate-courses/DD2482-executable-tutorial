# Containerizing your application

## Creating a foundation

A very important step of a docker container is its foundation, what it can be derived from. In some cases you just want an OS like ubuntu or in other cases you want something more specific, in this scenario we want to use a node.js image.

These images can be found on the [Docker Hub](https://hub.docker.com/), a repository of docker images. The node.js image can be found [here](https://hub.docker.com/_/node). To use it, we need to specify the following at the top of the file:

```Dockerfile
FROM node:20-alpine
```

The reason we're using 20-alpine and not 20 is because the standard image for node is quite large, roughly 1.3 Gb, the alpine image is a much more stripped down container with a size of 100 Mb. This is a good practice to keep the size of your container as small as possible.

Next step is defining where to put all of our files, we don't just want to sprinkle everything in the virtual root folder. In docker this is called a working directory, we can define it like this:

```Dockerfile
WORKDIR /app
```

From now on, all commands that perform actions will be executed in this directory unless specified otherwise.
