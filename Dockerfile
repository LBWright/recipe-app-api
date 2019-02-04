FROM python:3.7-alpine
WORKDIR /usr/src/app

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app
