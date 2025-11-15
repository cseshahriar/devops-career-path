# Multi stage image size very low
ARG PYTHON_VERSION=3.9

# build stage(stage 1)
FROM python:${PYTHON_VERSION} AS build

ENV PATH="/opt/venv/bin:$PATH"

WORKDIR /opt

RUN python -m venv /opt/venv

RUN apt update && apt install -y dnsutils

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

# State 2 (production)
# FROM python:${PYTHON_VERSION}-slim AS production
FROM python:${PYTHON_VERSION}-alpine AS production

ARG PYTHON_VERSION

# Set environment variables (modern format)
ENV PYTHONUNBUFFERED=1 \
NAME=flask-application \
PATH="/opt/venv/bin/:$PATH"

# build stage name
COPY --from=build /opt/venv /opt/venv

WORKDIR /app

COPY . .

CMD [ "python", "main.py" ]
