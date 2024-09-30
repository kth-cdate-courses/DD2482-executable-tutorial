# Setup Github Actions

Now, perform some change in the server code, like changing the print statement or similar. Add, commit and push these changes. Doing this should trigger the GitHub action which adds the container to the GitHub Container Registry [GHCR]. 

Create a file `URL.txt` in the folder above `server`. Copy the URL to your container in GHCR into URL.txt and press validate. The URL be to ghcr.io. 