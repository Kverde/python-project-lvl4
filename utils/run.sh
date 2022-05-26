#!/bin/sh

python manage.py collectstatic --noinput
python manage.py migrate
gunicorn task_manager.wsgi --bind=0.0.0.0:80
