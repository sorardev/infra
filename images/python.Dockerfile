FROM python:3.9.4-slim-buster

RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    graphviz-dev \
    graphviz \
    libpq-dev \
    gcc

ENV PYTHONUNBUFFERED 1

RUN mkdir /home/workspace/
RUN groupadd -g 984 jenkins
RUN useradd -r -u 984 -g jenkins -d /home/workspace/ jenkins
RUN chown jenkins:jenkins /home/workspace/
USER jenkins
WORKDIR /home/workspace/