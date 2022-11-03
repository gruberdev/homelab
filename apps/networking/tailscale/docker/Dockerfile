FROM ghcr.io/tailscale/tailscale:v1.32.2

RUN apk update && apk add ca-certificates ipcalc \
               iptables ip6tables iproute2 \
               && rm -rf /var/cache/apk/*

COPY iptables.sh iptables.sh
COPY run.sh /run.sh
CMD "/run.sh"
