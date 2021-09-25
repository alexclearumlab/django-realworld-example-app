FROM python:3.5.2

RUN mkdir /app
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt
#ENV DJANGO_SUPERUSER_PASSWORD "test"

#USER 
#ENTRYPOINT ["python"] # command in Kubernetes
#CMD ["/app/scripts/entrypoint.sh"]
