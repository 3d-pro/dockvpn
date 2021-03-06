FROM 3dpro/base-debian

RUN apt-get update && \
    apt-get install -y openvpn iptables socat curl

ADD ./bin /usr/local/sbin

VOLUME /etc/openvpn

EXPOSE 8443/tcp 1194/udp 8080/tcp

CMD run
