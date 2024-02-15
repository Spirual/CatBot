FROM python:3.11

WORKDIR /app

COPY requirements.txt .

COPY .env .

RUN pip install -r requirements.txt --no-cache-dir

COPY kittybot.py .

CMD ["python", "kittybot.py"]
