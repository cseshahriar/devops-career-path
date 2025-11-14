ARG PYTHON_VERSION=3.9

FROM python:${PYTHON_VERSION}

# Set environment variables (modern format)
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1


# system dependency
# RUN apk add build-base && \
#     apk --update --upgrade add gcc musl-dev jpeg-dev zlib-dev libffi-dev cairo-dev pango-dev gdk-pixbuf-dev openssl-dev

# Working directory
WORKDIR /app

# Install dependency
COPY requirements.txt .
RUN pip install -r requirements.txt

ARG PYTHON_REQUEST_VERSION=2.32.5
RUN pip install requests==${PYTHON_REQUEST_VERSION}

# copy all sources files
COPY . .

# Download GitHub ZIP correctly
# RUN wget -O app.zip https://github.com/DevOps-Career-Path-IC/flask-application/archive/refs/heads/master.zip\
# && unzip app.zip && rm app.zip

# local file copy
# ADD master.zip

# Copy form online
# ADD https://github.com/jesseduffield/lazygit/releases/download/v0.56.0/lazygit_0.56.0_linux_x86_64.tr.gz .

# make working dir as root
# WORKDIR /

# Entry point is like executable like cmd
# fix part
ENTRYPOINT ["python"]

CMD ["main.py"]