FROM postgres:alpine

LABEL maintainer="elpuffin2@gmail.com"
LABEL version="0.1"
LABEL descrption="upstream alpine postgresql image with init-userdb.sh predifined "

ADD init-userdb.sh /docker-entrypoint-initdb.d/
RUN chmod 0755 /docker-entrypoint-initdb.d/init-userdb.sh

EXPOSE 5432
