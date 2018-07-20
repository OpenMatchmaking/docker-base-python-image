FROM python:3.7-slim-stretch
RUN apt-get update && apt-get -y install gcc netcat

WORKDIR /
COPY run-server.sh docker-entrypoint.sh wait-for.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/run-server.sh"]
