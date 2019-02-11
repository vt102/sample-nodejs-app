FROM ubuntu:16.04

WORKDIR /home/ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y node-uglify

COPY main.js /home/ubuntu/main.js

CMD ["nodejs", "main.js"]

EXPOSE 8081
