FROM python:3.6.9

WORKDIR /app

ADD . /app

EXPOSE 5001

LABEL Copyright="2022" version="1.2"  owner='rileepher'

RUN pip3 install -r requirements.txt

VOLUME [ "/app/logs" ]

CMD python3 flaskme.py