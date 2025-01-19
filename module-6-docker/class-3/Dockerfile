FROM python:3.9

RUN apt install python3-pip

WORKDIR /app

# source to destination /app/requirements.txt
# . mane current directory te pest korteci
# COPY requirements.txt .
# COPY main.py .
# copy workdir all
COPY . .

# run command
RUN pip install -r requirements.txt

# executable,
CMD ["python3", "main.py"]

# entry point always runs
ENTRYPOINT [ "python3", "main.py"]