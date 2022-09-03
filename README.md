<br>
<p align="center">
  <img width="220" height="100" src="https://cncf-branding.netlify.app/img/projects/k3s/icon/white/k3s-icon-white.svg">
</p>

<h3 align="center">Homelab</h3>

<p align="center">
  <sub>Gitops managed k3s cluster</sub>
</p>

<a href='https://drone.gruber.dev.br' target='_blank'>

<p align="center">
  <img src="https://img.shields.io/drone/build/gruberdev/homelab/main?server=https%3A%2F%2Fdrone.gruber.dev.br&logo=drone&labelColor=1F1F1F&logoColor=41dde8&style=flat-square&label=Drone%20CI">
</p></a>

<br>

---

<details>

<summary> <b>Implemented tools</b> </summary>
<br>

> |             **Application**            |   **Category**  |                       **URIs**                      |     **Deployment Status**    |
> |:--------------------------------------:|:---------------:|:---------------------------------------------------:|:----------------------------:|
> |          [Drone CI][drone-uri]         | `CI/CD Tooling` |       <sub>[More details][homelab-drone]</sub>      |       ![][argocd-drone]      |
> |          [ArgoCD][argocd-uri]          | `CI/CD Tooling` |      <sub>[More details][homelab-argocd]</sub>      |       ![][argocd-core]       |
> | <sub>Zalando PostgreSQL Operator</sub> |   `Databases`   |      <sub>[More details][homelab-zalando]</sub>     |      ![][argocd-zalando]     |
> |             Redis Operator             |   `Databases`   |       <sub>[More details][homelab-redis]</sub>      |       ![][argocd-redis]      |
> |   Tailscale <sub>(as sidecars)</sub>   |   `Networking`  |     <sub>[More details][homelab-tailscale]</sub>    |     ![][argocd-tailscale]    |
> |            Unifi Controller            |   `Networking`  | <sub>[More details][homelab-unifi-controller]</sub> | ![][argocd-unifi-controller] |
> |               AdGuard DNS              |   `Networking`  |      <sub>[More details][homelab-adguard]</sub>     |      ![][argocd-adguard]     |
> |             Home Assistant             |   `Monitoring`  |        <sub>[More details][homelab-ha]</sub>        |        ![][argocd-ha]        |
> |           Changedetection.io           |   `Monitoring`  |  <sub>[More details][homelab-changedetection]</sub> |  ![][argocd-changedetection] |
> |                   n8n                  |    `Services`   |        <sub>[More details][homelab-n8n]</sub>       |        ![][argocd-n8n]       |
> |            Hashicorp's Vault           |    `Security`   |       <sub>[Chart Values][homelab-vault]</sub>      |       ![][argocd-vault]      |
> |             Flame Dashboard            |    `Services`   |       <sub>[More details][homelab-flame]</sub>      |       ![][argocd-flame]      |
> |              Unifi Poller              |   `Monitoring`  |      <sub>[More details][homelab-poller]</sub>      |      ![][argocd-poller]      |
> |   Cloudflared <sub>(as proxies)</sub>  |   `Networking`  | <sub>[More details][homelab-cloudflared]</sub>   |                              |

</details>

<details>

<summary> <b>Cluster Utilities</b>
</summary>

<br>

- descheduler
- kube-cleaner
- kube-fledged
- kubenurse
- reflector
- reloader
- botkube

</details>

<details>

<summary> <b>Repository & CI Utilities</b>
</summary>

<br>

> - [drone-skip-pipeline][drone-skip-pipeline-uri] <sub>(*Skip Drone CI steps based on files changes*)</sub>
> - [drone-github-comment][drone-github-uri] <sub>(*It takes the output of a step and comments on a Github pull request. [Example.][github-comment-example]*)</sub>
> - [yamllint][yamllint-uri] <sub>(*A linter for YAML files*)</sub>
 > - [markdown-link-check][markdown-link-check-uri] <sub>(*Checks if markdown links are responding correctly*)</sub>

</details>


<details>

<summary> <b>To be implemented</b> </summary>

#### Monitoring and k8s utilities:

- Prometheus/Grafana metrics
- Chaos Mesh for Chaos engineering

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

</details>

<!-- Tech tools URIs -->

[drone-uri]: https://www.drone.io/
[argocd-uri]: https://argoproj.github.io/cd/
[homeassistant-uri]: https://www.home-assistant.io/
[adguard-uri]: https://adguard.com/en/adguard-home/overview.html
[kuma-uri]: https://github.com/louislam/uptime-kuma

<!-- Shield Badges -->

[drone-img]: https://img.shields.io/drone/build/gruberdev/homelab?server=https%3A%2F%2Fdrone.gruber.dev.br&logo=drone&labelColor=1F1F1F&logoColor=41dde8&style=flat-square&label=Drone%20CI

<!-- Repository Utilities -->

[drone-skip-pipeline-uri]: https://github.com/joshdk/drone-skip-pipeline
[drone-github-uri]: https://github.com/joshdk/drone-github-comment
[yamllint-uri]: https://github.com/adrienverge/yamllint
[markdown-link-check-uri]: https://github.com/tcort/markdown-link-check
[github-comment-example]: https://github.com/gruberdev/homelab/pull/3#issuecomment-1229131136

<!-- Project Folders -->

[homelab-argocd]: https://github.com/gruberdev/homelab/tree/main/apps/argocd
[homelab-drone]: https://github.com/gruberdev/homelab/tree/main/apps/drone
[homelab-ha]: https://github.com/gruberdev/homelab/tree/main/apps/ha
[homelab-kuma]: https://github.com/gruberdev/homelab/tree/main/apps/monitoring/uptime-kuma
[homelab-adguard]: https://github.com/gruberdev/homelab/tree/main/apps/networking/adguard
[homelab-unifi-controller]: https://github.com/gruberdev/homelab/tree/main/apps/networking/unifi/controller
[homelab-zalando]: https://github.com/gruberdev/homelab/tree/main/apps/data/postgres
[homelab-redis]: https://github.com/gruberdev/homelab/tree/main/apps/data/redis
[homelab-tailscale]: https://github.com/gruberdev/homelab/tree/main/apps/networking/tailscale
[homelab-changedetection]: https://github.com/gruberdev/homelab/tree/main/apps/monitoring/changesdetection
[homelab-vault]: https://github.com/gruberdev/homelab/blob/main/apps/argocd/base/apps/vault.yaml
[homelab-n8n]: https://github.com/gruberdev/homelab/tree/main/apps/services/n8n
[homelab-flame]: https://github.com/gruberdev/homelab/tree/main/apps/monitoring/flame
[homelab-poller]: https://github.com/gruberdev/homelab/tree/main/apps/monitoring/unifi-poller
[homelab-cloudflared]: https://github.com/gruberdev/homelab/tree/main/apps/networking/cloudflared

<!-- ArgoCD Status Badges -->

[argocd-drone]: https://argo.gr.wtf/api/badge?name=drone
[argocd-ha]: https://argo.gr.wtf/api/badge?name=homeassistant
[argocd-kuma]: https://argo.gr.wtf/api/badge?name=uptime-kuma
[argocd-adguard]:https://argo.gr.wtf/api/badge?name=adguard
[argocd-unifi-controller]: https://argo.gr.wtf/api/badge?name=unifi-controller
[argocd-core]: https://argo.gr.wtf/api/badge?name=argocd
[argocd-n8n]: https://argo.gr.wtf/api/badge?name=n8n
[argocd-vault]: https://argo.gr.wtf/api/badge?name=vault
[argocd-ha]: https://argo.gr.wtf/api/badge?name=homeassistant
[argocd-redis]: https://argo.gr.wtf/api/badge?name=redis
[argocd-zalando]: https://argo.gr.wtf/api/badge?name=zalando
[argocd-changedetection]: https://argo.gr.wtf/api/badge?name=changedetection
[argocd-tailscale]: https://argo.gr.wtf/api/badge?name=tailscale
[argocd-flame]: https://argo.gr.wtf/api/badge?name=flame
[argocd-poller]: https://argo.gr.wtf/api/badge?name=unifi-poller
