FROM python:3.14.0a3-alpine

ARG AIOMSC_VERSION

# env variables
ENV FLASK_SECRET_KEY=123232323dfdfd
ENV DB_URL=http://db:3306

# run before build
RUN apk update && \
    apk add bash && apk add curl

EXPOSE 5000

# RUN pip install aiomisc==${AIOMSC_VERSION}

# COPY . .
ADD . .
ADD https://github.com/mredulorfiaz/i-dont-know-docker/blob/main/docker-compose.yml docker-compose.yml

# cmd after build
# ENTRYPOINT python3
# CMD ["python3", "main.py"]

# ENTRYPOINT python3
# CMD ["python3", "main.py"]

# ENTRYPOINT bash
# CMD ["-c", "nginx"]
WORKDIR /

ENTRYPOINT bash
CMD ["bash", "-c", "nginx"]