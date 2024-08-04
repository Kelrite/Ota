FROM python:3.9-slim

WORKDIR /application

ENV PORT 5000

COPY . /application

RUN pip install -r /application/requirements.txt

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 application:app
