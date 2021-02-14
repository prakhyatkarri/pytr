FROM ubuntu:18.04
RUN apt-get update -y && apt-get install software-properties-common -y  && apt-get upgrade -y && apt-get install curl -y
COPY ./requirements.txt /app/requirements.txt
EXPOSE 5000
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]