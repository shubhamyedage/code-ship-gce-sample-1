#!/bin/bash
set -e

# Authenticate with the Google Services
echo "Authenticating"
codeship_google authenticate

# switch to the directory containing your app.yml (or similar) configuration file
# note that your repository is mounted as a volume to the /deploy directory
cd /deploy/main
#python --version
#apt-get -y update
#apt-get -y install python-pip python-dev build-essential
#pip install --upgrade pip
#pip install --upgrade pip
#pip install -r requirements.txt

# deploy the application
echo "Setting project"
gcloud config set project text-summary-python27
gcloud auth list
echo "Deploying"
gcloud app deploy --bucket=gs://text-summary-python27.appspot.com --log-http --verbosity=debug --quiet
