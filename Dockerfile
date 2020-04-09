FROM python:3.7-alpine
MAINTAINER Egota Boetai

ENV PYTHONUNBUFFRED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /apoli
WORKDIR /apoli
COPY ./apoli /apoli

RUN adduser -D user
USER user
