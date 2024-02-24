#!/usr/bin/env bash
# exit on error

set -o errexit

pip install -r requirements.txt

python manage.p collectstatic --no-input
python manage.py migrate
