FROM python:3

ENV PYTHONUNBUFFERED 1
RUN mkdir /django_mongodb_docker
WORKDIR /django_mongodb_docker
COPY . /django_mongodb_docker/
RUN pip install -r requirements.txt