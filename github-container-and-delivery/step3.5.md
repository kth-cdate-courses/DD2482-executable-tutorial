# Setup Github Actions
Now, add and commit this change to your repository. Push these changes to GitHub. Doing this should trigger the GitHub action which adds the container to the GitHub Container Registry [GHCR]. 


In order to check your progress, we will attempt to pull your distribution using Docker. Create a file `URL.txt` in the folder above `server`. Copy the URL to your container in GHCR into URL.txt and press validate. Note that both the repository and distribution should be public in order for the validation to succeed.  