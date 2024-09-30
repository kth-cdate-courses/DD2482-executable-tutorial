# Containerizing your application

## Porting over the application

The core of the container is of course our own application, we need to copy over the files. Dependencing on your application this step can look very different, but usually it involves copying over the dependency file (in this case package.json). Then either copying over the build binary or for interpreted languages like node.js, copying over the source files.

We also need to install the dependencies, this is done by running `npm install` in the container. When building the container, this will fetch all necessary dependencies and install them into the container.

```Dockerfile
COPY package.json package-lock.json ./
RUN npm install
# Copy source files (in this case we only have one)
COPY index.mjs ./index.mjs
```

Now we have everything necessary to run the container! But we can't run it just yet...
