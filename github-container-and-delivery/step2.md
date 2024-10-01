# Creating a git repository

Now that we have a working application inside our container let's continue. Before we can upload it, we first need to create a GitHub repository. GitHub has a so called container store where you can upload your container images. This is called ghcr.io. But before we can upload anything to here, we first need to create a repository, make sure to make it `Public`, this is very important for the script to be able to check the registry.

To link this properly you need to do the following:

1. Within the `server` folder initialize a git repository by running the following command:

```bash
git init
```

Now since you're not logged in to your GitHub account, you will be required to copy the .ssh keypair from the folder root/.ssh/id_rsa.pub to your GitHub account. This way we get push access to the repository.
Lastly make sure to set an alias email and name for the git repository by running the following commands:

```bash
git config --global user.name "Sven Svensson"
git config --global user.email "example@mail.se"
```

2. Commit the changes and publish it to a new repository on GitHub.

When the code is uploaded, we're ready to proceed!

Note that you can have multiple terminal tabs open in Killercoda.
