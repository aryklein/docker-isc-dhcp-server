# Base Image
FROM alpine

RUN apk add --update dhcp \
    && rm -rf /var/cache/apk/*

RUN ["touch", "/var/lib/dhcp/dhcpd.leases"]

EXPOSE 67/udp 67/tcp

CMD ["/usr/sbin/dhcpd", "-4", "-f", "-d", "--no-pid", "-cf", "/etc/dhcp/dhcpd.conf"]
