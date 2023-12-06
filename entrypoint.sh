#!/bin/sh
set -e
python3 manage.py migrate --no-input
python3 manage.py collectstatic --no-input
python manage.py runserver 0.0.0.0:8000
