FROM ubuntu:16.01

RUN apt-get update && apt-get install -y python python-pip

RUN pip install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --hots=0.0.0.0 --port=8080
