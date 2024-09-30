# Containerizing your application

## Making it runnable and connectable

The last step of preparing the container is to make it runnable and connectable. This is done by defining the `CMD` and `EXPOSE` instructions in the Dockerfile.

- `EXPOSE` is used to define which ports the container will listen on. This is not necessary for the container to run, but it is a good practice to define it. This way it is clear which ports the container will listen on and it is easier to connect to the container.
- `CMD` is the command that is run when the container is started. This can be anything, but in our case it is the command to start the application.

In our case the application runs on port 80, and to run the node application we have to run `npm run start`.

Your Dockerfile should look like this:

```Dockerfile
FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install
COPY index.mjs ./index.mjs

EXPOSE 80

CMD [ "npm", "run", "start" ]
```
