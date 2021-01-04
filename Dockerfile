FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN   grep '^deb ' /etc/apt/sources.list | \
      sed 's/^deb /deb-src /g' | \
      tee /etc/apt/sources.list.d/deb-src.list && \
      apt update -y && \
      apt install -y dpkg-dev devscripts build-essential fakeroot libssl-dev libldap2-dev libpam0g-dev libdb-dev cdbs libsasl2-dev debhelper libcppunit-dev libkrb5-dev comerr-dev libcap2-dev libecap3-dev git vim && \
      apt source squid


# EXPOSE 3128

# CMD ["/usr/sbin/squid", "-N"]
