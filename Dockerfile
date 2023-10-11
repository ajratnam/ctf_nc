FROM ubuntu:latest

RUN apt-get update && apt-get install -y ncat

COPY ./src/ /challenge/
COPY ./listen.sh /challenge/
WORKDIR /challenge

RUN chmod +x ./listen.sh
CMD ["./listen.sh"]

EXPOSE 9999
