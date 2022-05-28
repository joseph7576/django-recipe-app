FROM python:3.10.4-alpine3.16
LABEL org.opencontainers.image.authors="joeho7576@gmail.com"

ENV PYTHONUNBUFFERED=1

COPY ./req.txt /req.txt
RUN pip install -r /req.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user