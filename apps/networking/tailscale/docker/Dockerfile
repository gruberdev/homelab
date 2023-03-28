FROM ghcr.io/tailscale/tailscale:v1.38.2

RUN apk update && apk add ca-certificates ipcalc \
               iptables ip6tables iproute2 \
               && rm -rf /var/cache/apk/*

COPY iptables.sh iptables.sh
COPY run.sh /run.sh
RUN chmod +x run.sh && chmod +x iptables.sh
CMD "/run.sh"
