FROM python:3.6-slim-stretch
RUN apt-get update && apt-get -y install gcc

WORKDIR /
COPY run-server.sh /
CMD ["/run-server.sh"]
