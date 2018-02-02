FROM ubuntu:latest

LABEL maintainer="elpuffin2@gmail.com"
LABEL version="0.1"
LABEL descrption="Beta image installing gitrob in an ubuntu container\
it expects to connect to a postgres db on a host called db"

EXPOSE 9696

RUN apt update  && apt upgrade -y && \
  apt install -y netcat ruby ruby-dev gcc g++ make libpq-dev && \
  apt clean all 

RUN gem update --system && \
   gem install gitrob 

COPY gitrobrc /root/.gitrobrc

ENTRYPOINT while ! echo exit | nc db 5432; do sleep 10; done;  echo "y" |  gitrob server --bind-address=0.0.0.0 --port=9696 

