FROM python:3.9-slim

WORKDIR /application

COPY . /application

RUN pip install -r /application/requirements.txt

EXPOSE 5000

CMD ["gunicorn", "application:app", "-b", "0.0.0.0:5000"]