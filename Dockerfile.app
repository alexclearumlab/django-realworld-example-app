FROM kofonfor/django-realworld-example-app-base:v0.1.0

ADD . /app
WORKDIR /app
ENV DJANGO_SUPERUSER_PASSWORD="test"
ENV DJANGO_SUPERUSER_USERNAME="test"
ENV DJANGO_SUPERUSER_EMAIL="test@example.com"

#USER 
#ENTRYPOINT ["python"] # command in Kubernetes
CMD ["/app/scripts/entrypoint.sh"]
