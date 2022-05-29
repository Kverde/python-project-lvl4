install:
	poetry install

shell:
	poetry shell

django_shell:
	poetry run python manage.py shell_plus

develop:
	poetry run python manage.py collectstatic --noinput
	poetry run python manage.py runserver

prod:
	