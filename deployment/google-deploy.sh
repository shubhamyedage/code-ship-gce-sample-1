#!/bin/bash
set -e

date=$(date "+%Y%m%d%H%M")
cluster_name="codeship-gcloud-test-${date}"
echo "Authenticating"
ls

# Authenticate with the Google Services
#codeship_google authenticate

# switch to the directory containing your app.yml (or similar) configuration file
# note that your repository is mounted as a volume to the /deploy directory
#cd /deploy/

#apt-get install python-pip
#pip install --upgrade pip
#pip install -r requirements.txt

# deploy the application
#gcloud app deploy --quiet
