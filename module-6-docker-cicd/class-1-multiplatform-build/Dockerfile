FROM python:3.9.21-slim

# arguments passed at build time
ARG TARGETPLATFORM

WORKDIR /app

RUN apt update && apt install -y build-essential \
    gcc \
    wget \
    && rm -rf /var/lib/apt/lists/*

# target match then execute
RUN if [ "$TARGETPLATFORM" = "linux/arm64" ]; then apt update && apt install -y wget; fi

ADD app/requirements.txt .

RUN --mount=type=cache,target=/root/.cache/pip pip install -r requirements.txt

COPY app/ .

CMD ["python", "main.py"]
