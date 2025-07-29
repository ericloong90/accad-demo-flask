#!/bin/bash
set -e

echo "Installing dependencies..."

DEPLOY_DIR="/home/ec2-user/accad-demo-flask"

# Make sure the deploy user owns the directory (important!)
sudo chown -R ec2-user:ec2-user $DEPLOY_DIR

# Switch to working directory
cd $DEPLOY_DIR

# Use ec2-user’s shell to create and activate venv
sudo -u ec2-user bash <<EOF
cd $DEPLOY_DIR
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt