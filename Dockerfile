FROM python:3

ENV PYTHONUNBUFFERED 1
RUN mkdir /django_mongodb_docker
WORKDIR /django_mongodb_docker
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .
