#FROM ubuntu:18.04
FROM python:alpine3.7
#RUN apt-get update -y
#RUN apt-get install software-properties-common -y
#RUN apt-get upgrade -y
#RUN apt-get install curl -y
#RUN apt-get install pip -y
COPY ./requirements.txt /app/requirements.txt
EXPOSE 5000
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]