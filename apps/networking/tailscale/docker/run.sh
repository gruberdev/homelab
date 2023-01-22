#!/bin/sh

# from https://raw.githubusercontent.com/tailscale/tailscale/main/docs/k8s/run.sh

export PATH="$PATH:/tailscale/bin"

AUTH_KEY="${AUTH_KEY:-}"
DEST_PORT="${DEST_PORT:-}"

TS_ROUTES="${ROUTES:-}"
TS_DEST_SVC="${TS_DEST_SVC:-}"
TS_STATE_DIR="${TS_STATE_DIR:-}"

TS_TAGS="${TS_TAGS:-}"
TS_SSH="${TS_SSH:-true}"

TS_ACCEPT_DNS="${TS_ACCEPT_DNS:-false}"
TS_EXTRA_ARGS="${EXTRA_ARGS:-}"
TS_USERSPACE="${USERSPACE:-true}"
TS_KUBE_SECRET="${KUBE_SECRET:-tailscale}"
TS_SOCKET="${TS_SOCKET:-/tmp/tailscaled.sock}"
TS_HOSTNAME="${TS_HOSTNAME:-${HOSTNAME}}"

set -e

chmod +x /iptables.sh
sh /iptables.sh

TAILSCALED_ARGS="--socket=${TS_SOCKET}"

if [[ ! -z "${KUBERNETES_SERVICE_HOST}" ]]; then
  TAILSCALED_ARGS="${TAILSCALED_ARGS} --state=kube:${TS_KUBE_SECRET} --statedir=${TS_STATE_DIR:-/tmp}"
elif [[ ! -z "${TS_STATE_DIR}" ]]; then
  TAILSCALED_ARGS="${TAILSCALED_ARGS} --statedir=${TS_STATE_DIR}"
else
  TAILSCALED_ARGS="${TAILSCALED_ARGS} --state=mem: --statedir=/tmp"
fi

if [[ "${TS_USERSPACE}" == "true" ]]; then
  if [[ ! -z "${TS_DEST_IP}" ]]; then
    echo "IP forwarding is not supported in userspace mode"
    exit 1
  fi
  TAILSCALED_ARGS="${TAILSCALED_ARGS} --tun=userspace-networking"
else
  if [[ ! -d /dev/net ]]; then
    mkdir -p /dev/net
  fi

  if [[ ! -c /dev/net/tun ]]; then
    mknod /dev/net/tun c 10 200
  fi
fi

if [[ ! -z "${TS_TAILSCALED_EXTRA_ARGS}" ]]; then
  TAILSCALED_ARGS="${TAILSCALED_ARGS} ${TS_TAILSCALED_EXTRA_ARGS}"
fi

handler() {
  echo "Caught SIGINT/SIGTERM, shutting down tailscaled"
  kill -s SIGINT $PID
  wait ${PID}
}

echo "Starting tailscaled"
tailscaled ${TAILSCALED_ARGS} &
PID=$!
trap handler SIGINT SIGTERM

UP_ARGS="--accept-dns=${TS_ACCEPT_DNS}"
if [[ ! -z "${TS_ROUTES}" ]]; then
  UP_ARGS="--advertise-routes=${TS_ROUTES} ${UP_ARGS}"
fi
if [[ ! -z "${AUTH_KEY}" ]]; then
  UP_ARGS="--authkey=${AUTH_KEY} ${UP_ARGS}"
fi
if [[ ! -z "${TS_TAGS}" ]]; then
  UP_ARGS="--advertise-tags=${TS_TAGS} ${UP_ARGS}"
fi
if [[ ! -z "${TS_HOSTNAME}" ]]; then
  UP_ARGS="--hostname=${TS_HOSTNAME} ${UP_ARGS}"
fi
if [[ ! -z "${TS_SSH}" ]]; then
  UP_ARGS="--ssh=${TS_SSH} ${UP_ARGS}"
fi
if [[ ! -z "${TS_EXTRA_ARGS}" ]]; then
  UP_ARGS="${UP_ARGS} ${TS_EXTRA_ARGS:-}"
fi

echo "Running tailscale up"
tailscale --socket="${TS_SOCKET}" up ${UP_ARGS} --accept-routes=true --reset

if [[ ! -z "${TS_DEST_SVC}" ]]; then
  echo "Internal SVC found, finding KubeDNS clusterIP and creating iptables rules for DNAT"
  DEST_IP=$(ping -q -c 1 -t 1 "${TS_DEST_SVC}" | grep PING | sed -e "s/).*//" | sed -e "s/.*(//")
  echo "Service ClusterIP Address is $DEST_IP"
  iptables -t nat -I PREROUTING -d "$(tailscale --socket=${TS_SOCKET} ip -4)" -j DNAT --to-destination "${DEST_IP}"
  ip6tables -t nat -I PREROUTING -d "$(tailscale --socket=${TS_SOCKET} ip -6)" -j DNAT --to-destination "${DEST_IP}"
fi

if [[ ! -z "${DEST_PORT}" ]]; then
  echo "Adding iptables rules for REDIRECT"
  iptables -t nat -I PREROUTING -p tcp -d "$(tailscale --socket=${TS_SOCKET} ip -4)" --dport 1:65535 -j REDIRECT --to-ports "${DEST_PORT}"
  ip6tables -t nat -I PREROUTING -p tcp -d "$(tailscale --socket=${TS_SOCKET} ip -6)" --dport 1:65535 -j REDIRECT --to-ports "${DEST_PORT}"
fi

echo "Waiting for tailscaled to exit"
wait ${PID}
