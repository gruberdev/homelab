<p align="center">
  <img width="220" height="100" src="https://cncf-branding.netlify.app/img/projects/k3s/icon/white/k3s-icon-white.svg">
</p>

<h3 align="center">Homelab</h3>

<p align="center">
  <sub>Gitops managed k3s cluster</sub>
</p>

<br>

---

<details>

<summary> <b>Implemented tools</b> </summary>

>
> | App | Category | URI
> |--|--|--|
> | Drone CI | `CI/CD Tooling` | <sub>[More details](https://github.com/gruberdev/homelab/tree/main/apps/drone)</sub>


#### CI Tools:
- Drone CI
  - kube-drone-runner (Agent for Kubernetes)
- ArgoCD
  - argocd-vault-plugin (for secret management)
#### Storage, security and networking utilities:

- Zalando's PostgreSQL Operator
- Redis operator
- Unifi controller
- Adguard DNS
- Tailscale <sub>(mostly as sidecars)</sub>
- Hasicorp's Vault

#### Kubernetes Utilities:

- Descheduler
- kube-cleaner
- kube-fledged
- kubenurse
- Reflector
- Reloader

#### Services and applications:

- Home Assistant
- changedetection.io
- n8n

---

</details>


<details>

<summary> <b>To be implemented</b> </summary>

---

#### Storage, security and networking utilities:

- Unifi Poller

#### Monitoring and k8s utilities:

- Prometheus/Grafana metrics
- Chaos Mesh for Chaos engineering
- Uptime Kuma
- Healthchecks

#### Services and applications:

- Matrix
  - Matrix bridges and double-puppets
- Jellyfin
  - Prowlarr
  - Bazarr
  - Radarr
  - Sonarr
- qBittorrent
- Maloja
- Domainmod
- Monica
- Mango
- Wakapi
- Wallabag
- RSS Feeds (multiple)
- Wyze bridge
- Frigate for Home Assistant
- Flame dashboard

</details>