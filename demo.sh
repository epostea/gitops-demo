#!/bin/bash

# Main script

# Download the required files
curl -H 'Authorization: token $githubToken' -H 'Accept: application/vnd.github.v3.raw' -O -L https://api.github.com/repos/epostea/gitops-demo/contents/python/main.py
curl -H 'Authorization: token $githubToken' -H 'Accept: application/vnd.github.v3.raw' -O -L https://api.github.com/repos/epostea/gitops-demo/contents/python/utils.py

# Run the python application
python3 main.py
exit $?
