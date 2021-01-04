FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN   apt update -y && \
      apt install -y squid

COPY ./conf/squid.conf /etc/squid/squid.conf
EXPOSE 8080

CMD ["/usr/sbin/squid", "-N"]
