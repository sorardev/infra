FROM python:3.9.4-slim-buster

RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    graphviz-dev \
    graphviz \
    libpq-dev \
    gcc

ENV PYTHONUNBUFFERED 1