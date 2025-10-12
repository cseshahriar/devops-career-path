# docker file build image
# Base image :This line tells Docker to use the official Python 3.10.12 image as the base for your container. This includes Python already installed on a Linux OS (usually Debian or similar).
FROM python:3.10.12

# Set environment variables
# ENV PYTHONDONTWRITEBYTECODE 1  : Prevents Python from creating .pyc files (compiled bytecode), which can clutter your file system and are not needed in most deployments.
# PYTHONUNBUFFERED=1: Ensures output from Python (like print) is immediately flushed to the console. Useful for real-time logging in Docker.

ENV PYTHONDONTWRITEBYTECODE 1  
ENV PYTHONUNBUFFERED 1

# Set work directory: Sets the working directory inside the container to /app. All following commands (like COPY, RUN, etc.) will run inside this folder.
WORKDIR /app

# Install dependencies
# COPY requirements.txt .: Copies the requirements.txt file from your local project directory to the /app folder in the container.
# RUN pip install --upgrade pip && pip install -r requirements.txt: First upgrades pip, then installs all Python packages listed in requirements.txt.
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy project files: Copies the entire contents of your project folder (including all subdirectories and files) into the /app directory in the container.
COPY . .

# For production: Collect static files
# This is commented out, but if enabled, it runs Django's collectstatic command to gather all static files (CSS, JS, images, etc.) into a single location, usually for serving in production.
# --noinput tells Django not to prompt for user input during the process.
# RUN python manage.py collectstatic --noinput