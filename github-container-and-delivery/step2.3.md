# Creating a git repository

## Link the repository

Commit the changes and publish it to a new repository on GitHub. Do this by running the following (in the server directory):

```bash
git add -A
git commit -m "init"
git branch -M main
git remote add origin <your-repo-url>
git push -u origin main
```

An example of a repository URL is `https://github.com/kth-cdate-courses/DD2482-executable-tutorial-trial-run`

When the code is uploaded, we're ready to proceed!

Note that you can have multiple terminal tabs open in Killercoda.
