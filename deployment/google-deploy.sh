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
echo $GOOGLE_AUTH_EMAIL
echo $GOOGLE_AUTH_JSON
echo "${GOOGLE_AUTH_JSON}" > /keyconfig.json
gcloud auth activate-service-account "${GOOGLE_AUTH_EMAIL}" --key-file /keyconfig.json --project "${GOOGLE_PROJECT_ID}"
gcloud auth list
# deploy the application
#echo "Setting project"
#gcloud config set project text-summary-python27
echo "Deploying"
gcloud app deploy --bucket=gs://text-summary-python27.appspot.com --quiet
#gcloud app deploy --bucket=gs://text-summary-python27.appspot.com --log-http --verbosity=debug --quiet
