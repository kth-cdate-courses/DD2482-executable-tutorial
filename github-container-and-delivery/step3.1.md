# Setup Github Actions

The first step is to check out the repo. This makes the GitHub action pull the code from the repository into the action runner. This is neccessary since the action runner starts from a generic image. 

Checking out a repo can be done by using `- uses: actions/checkout@v3`

This should be indented one level more than steps, to indicate it is a step.  

Like the following:
```yml
    steps:
      - name: Check out code
        uses: actions/checkout@v3
```