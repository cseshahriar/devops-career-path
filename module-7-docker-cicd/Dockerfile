FROM python:3.9.21-slim

WORKDIR /app

COPY app/requirements.txt .

RUN --mount=type=cache,target=/root/.cache/pip pip install -r requirements.txt

COPY app/ .

CMD ["python3", "main.py"]
