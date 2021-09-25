#!/bin/bash -x
echo "email: ${DJANGO_SUPERUSER_EMAIL}" && \
echo "password: ${DJANGO_SUPERUSER_PASSWORD}" && \
python manage.py makemigrations --noinput && \
python manage.py migrate --noinput && \
#python manage.py collectstatic --noinput
cat <<EOF | python manage.py shell
from django.contrib.auth import get_user_model

User = get_user_model()  # get the currently active user model,

User.objects.filter(username='admin').exists() or \
	    User.objects.create_superuser('admin', 'admin@example.com', 'pass')
EOF
#python manage.py createsuperuser -v 3 --email ${DJANGO_SUPERUSER_EMAIL} --username ${DJANGO_SUPERUSER_USERNAME}
python manage.py runserver 0.0.0.0:8000
