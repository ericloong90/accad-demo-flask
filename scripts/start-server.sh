#!/bin/bash
set -e

echo "Starting Flask app..."

cd /usr/app/accad-demo-flask
source venv/bin/activate

nohup python3 app.py > app.log 2>&1 &