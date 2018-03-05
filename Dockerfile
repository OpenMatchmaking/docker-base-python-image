FROM python:3.6-slim-stretch
RUN apt-get update && apt-get -y install gcc

COPY run-server.sh /
CMD ["/run-server.sh"]
