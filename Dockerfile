FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 5000

ENV ENVIRONMENT=production
ENV APP_VERSION=1.0.0

# CMD ["python", "app.py"]
CMD ["python", "-c", "import time; time.sleep(3600)"]