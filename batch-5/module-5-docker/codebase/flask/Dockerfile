ARG PYTHON_VERSION=3.13.9

# Python base image
FROM python:${PYTHON_VERSION}

# copy dependency
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# Copy all app files source to destination
COPY . .

# Run Flask app
# CMD ["python", "app.py"]

# Set working directory
# WORKDIR /app

# Expose Flask port
# EXPOSE 5000

