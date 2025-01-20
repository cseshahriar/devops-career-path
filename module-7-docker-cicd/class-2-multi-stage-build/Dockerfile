# build stage start, first state default 0
FROM python:3.9.21-slim AS build
# FROM --platform=$TARGETPLATFORM python:3.9.21-slim

WORKDIR /app

RUN apt update && apt install -y build-essential \
    gcc \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

ADD app/requirements.txt .

RUN --mount=type=cache,target=/root/.cache/pip pip install -r requirements.txt

COPY app/ .

# from theke stage start
FROM python:3.9.21-alpine AS dev

WORKDIR /app
# COPY --from=build local/lib/python3.9/site-package /usr/local/lib/python3.9/site-package
COPY --from=build /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages

COPY --from=build /app .

CMD ["python3", "main.py",]

FROM python:3.9.21-alpine AS prod

WORKDIR /app
# COPY --from=build local/lib/python3.9/site-package /usr/local/lib/python3.9/site-package
COPY --from=build /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages

COPY --from=build /app .

CMD ["python3", "main.py"]