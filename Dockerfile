FROM python:3.8-alpine

RUN apk add --no-cache --virtual .build-deps \
        gcc \
        musl-dev \
        python3-dev \
        libffi-dev \
        openssl-dev \
        cargo \
        curl \
        libpq

RUN pip install "poetry==1.1.5"

RUN mkdir /app 
WORKDIR /app

COPY pyproject.toml /app
ENV PYTHONPATH=${PYTHONPATH}:${PWD}

RUN poetry config virtualenvs.create false
RUN poetry install --no-dev

COPY . .

LABEL maintainer="Ettore Aquino <ettore@ettoreaquino.com>" \
      version="0.1.0"

CMD gunicorn -w 1 -b "0.0.0.0:9080" -t 300 --chdir src/ application.entrypoints.app:app