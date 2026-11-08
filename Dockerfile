FROM python:3.12-slim

WORKDIR /flask_app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY flask_docker.py .

EXPOSE 5000

CMD ["python3", "flask_docker.py"]
