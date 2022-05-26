#!/bin/sh

poetry run python manage.py collectstatic --noinput
poetry run python manage.py migrate
poetry run gunicorn task_manager.wsgi --bind=0.0.0.0:80
