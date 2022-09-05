<br>
<p align="center">
  <img width="220" height="100" src="https://cncf-branding.netlify.app/img/projects/k3s/icon/white/k3s-icon-white.svg">
</p>

<h3 align="center">Homelab</h3>

<p align="center">
  <sub>Gitops managed k3s cluster</sub>
</p>



<p align="center">
  <a href='https://drone.gruber.dev.br' target='_blank'><img src="https://img.shields.io/drone/build/gruberdev/homelab/main?server=https%3A%2F%2Fdrone.gruber.dev.br&logo=drone&labelColor=1F1F1F&logoColor=41dde8&style=flat-square&label=CI%20Status"></a> &nbsp;
  <img src="https://img.shields.io/github/last-commit/gruberdev/homelab?color=black&labelColor=black&label=last%20commit&logo=github&logoColor=cyan&style=flat-square">
</p>

<br>

---

<details>

<summary> <b>Implemented applications</b> </summary>
<br>

> |             **Application**            |   **Category**  |                       **Info**                      |     **Deployment Status**    | **Latest Release**
> |:--------------------------------------:|:---------------:|:---------------------------------------------------:|:----------------------------:|:----------------------:|
> |          [Drone CI][drone-uri]         | `CI/CD Tooling` |       <sub>[More details][homelab-drone]</sub>      |       ![][argocd-drone]      | ![][drone-badge]    |
> |          [ArgoCD][argocd-uri]          | `CI/CD Tooling` |      <sub>[More details][homelab-argocd]</sub>      |       ![][argocd-core]       | ![][argo-badge]     |
> | [<sub>Zalando PostgreSQL Operator</sub>][p-uri] |   `Databases`   |      <sub>[More details][homelab-zalando]</sub>     |      ![][argocd-zalando]     | ![][zalando-badge]  |
> |       [Redis Operator][redis-uri]      |   `Databases`   |       <sub>[More details][homelab-redis]</sub>      |       ![][argocd-redis]      |  ![][redis-badge]   |
> |[Tailscale <sub>(as sidecars)</sub>][tail-uri]| `Networking`  | <sub>[More details][homelab-tailscale]</sub>    |     ![][argocd-tailscale]    |![][tailscale-badge] |
> |  [Unifi Controller][service-unifi]     |   `Networking`  | <sub>[More details][homelab-unifi-controller]</sub> | ![][argocd-unifi-controller] | ![][unifi-badge]    |
> |    [AdGuard DNS][service-adguard]      |   `Networking`  |      <sub>[More details][homelab-adguard]</sub>     |      ![][argocd-adguard]     | ![][adguard-badge]  |
> |      [Home Assistant][service-ha]      |   `Monitoring`  |        <sub>[More details][homelab-ha]</sub>        |        ![][argocd-ha]        |    ![][ha-badge]    |
> |   [Wyze API Bridge][service-wyze]      |   `Monitoring`  |        <sub>[More details][homelab-wyze]</sub>      |        ![][argocd-wyze]      |  ![][wyze-badge]    |
> |  [Changedetection.io][change-uri]      |   `Monitoring`  |  <sub>[More details][homelab-changedetection]</sub> |  ![][argocd-changedetection] | ![][change-badge]  |
> |                   n8n                  |    `Services`   |        <sub>[More details][homelab-n8n]</sub>       |        ![][argocd-n8n]       |                      |
> |            Hashicorp's Vault           |    `Security`   |       <sub>[Chart Values][homelab-vault]</sub>      |       ![][argocd-vault]      |                     |
> |             Flame Dashboard            |    `Services`   |       <sub>[More details][homelab-flame]</sub>      |       ![][argocd-flame]      |                     |
> |              Unifi Poller              |   `Monitoring`  |      <sub>[More details][homelab-poller]</sub>      |      ![][argocd-poller]      |                     |
> |   Cloudflared <sub>(as proxies)</sub>  |   `Networking`  | <sub>[More details][homelab-cloudflared]</sub>      |                              |                     |
> |                   Wakapi               |    `Services`   |        <sub>[More details][homelab-wakapi]</sub>    |        ![][argocd-wakapi]    |                     |
> | [RSS Gen/Proxy][service-rssgen]           |    `Services`   |        <sub>[More details][homelab-rssgen]</sub>    |        ![][argocd-rss]    |                     |
> |    [RSS Hub][service-rsshub]           |    `Services`   |        <sub>[More details][homelab-rsshub]</sub>    |        ![][argocd-rss]       |                      |
> |           [Beets][service-beets]                        |   `Media`  |  <sub>[More details][homelab-beets]</sub> |  ![][argocd-beets]        |                      |
> |           [Lidarr][service-lidarr]                       |   `Media`  |  <sub>[More details][homelab-lidarr]</sub> |  ![][argocd-lidarr]      |                     |
> |         [Metabase][service-metabase]             |   `Analytics`   |       <sub>[More details][homelab-metabase]</sub> |       ![][argocd-metabase] |  |

---

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

---

</details>

<details>

<summary> <b>Repository & CI Tooling</b>
</summary>

<br>

> - [drone-skip-pipeline][drone-skip-pipeline-uri] <sub>(*Skip Drone CI steps based on files changes*)</sub>
> - [drone-github-comment][drone-github-uri] <sub>(*It takes the output of a step and comments on a Github pull request. [Example.][github-comment-example]*)</sub>
> - [yamllint][yamllint-uri] <sub>(*A linter for YAML files*)</sub>
> - [markdown-link-check][markdown-link-check-uri] <sub>(*Checks if markdown links are responding correctly*)</sub>

---

</details>


<details>

<summary> <b>To be implemented</b> </summary>

&nbsp;

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
- Domainmod
- Monica
- Wallabag
- Frigate for Home Assistant

</details>

<details>

<summary> <b>Repository Stats</b> </summary>

<br>

![Alt](https://repobeats.axiom.co/api/embed/576d4457404c7c5ba81a07cecd2b440163eebd63.svg "Repobeats analytics image")

</details>

<!-- Tech tools URIs -->

[drone-uri]: https://www.drone.io/
[argocd-uri]: https://argoproj.github.io/cd/
[homeassistant-uri]: https://www.home-assistant.io/
[adguard-uri]: https://adguard.com/en/adguard-home/overview.html
[kuma-uri]: https://github.com/louislam/uptime-kuma
[service-rssgen]: https://github.com/damoeb/rss-proxy
[service-rsshub]: https://github.com/DIYgod/RSSHub
[service-beets]: https://github.com/beetbox/beets
[service-lidarr]: https://github.com/Lidarr/Lidarr
[service-metabase]: https://www.metabase.com/
[service-ha]: https://www.home-assistant.io/
[service-adguard]: https://adguard.com/en/adguard-home/overview.html
[service-unifi]: https://github.com/linuxserver/docker-unifi-controller
[tail-uri]: https://tailscale.com/kb/1151/what-is-tailscale/
[service-n8n]: https://n8n.io/
[p-uri]: https://github.com/zalando/postgres-operator
[service-wyze]: https://github.com/mrlt8/docker-wyze-bridge
[change-uri]: https://github.com/dgtlmoon/changedetection.io
[redis-uri]: https://github.com/spotahome/redis-operator

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
[homelab-ha]: https://github.com/gruberdev/homelab/tree/main/apps/home/ha
[homelab-wyze]: https://github.com/gruberdev/homelab/tree/main/apps/home/wyze
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
[homelab-wakapi]: https://github.com/gruberdev/homelab/tree/main/apps/services/wakapi
[homelab-rssgen]: https://github.com/gruberdev/homelab/tree/main/apps/services/rss/gen
[homelab-rsshub]: https://github.com/gruberdev/homelab/tree/main/apps/services/rss/hub
[homelab-beets]: https://github.com/gruberdev/homelab/tree/main/apps/services/media/beets
[homelab-lidarr]: https://github.com/gruberdev/homelab/tree/main/apps/services/media/lidarr
[homelab-metabase]: https://github.com/gruberdev/homelab/tree/main/apps/data/metabase

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
[argocd-wyze]: https://argo.gr.wtf/api/badge?name=wyze-bridge
[argocd-redis]: https://argo.gr.wtf/api/badge?name=redis
[argocd-zalando]: https://argo.gr.wtf/api/badge?name=zalando
[argocd-changedetection]: https://argo.gr.wtf/api/badge?name=changedetection
[argocd-tailscale]: https://argo.gr.wtf/api/badge?name=tailscale
[argocd-flame]: https://argo.gr.wtf/api/badge?name=flame
[argocd-poller]: https://argo.gr.wtf/api/badge?name=unifi-poller
[argocd-wakapi]: https://argo.gr.wtf/api/badge?name=unifi-poller
[argocd-rss]: https://argo.gr.wtf/api/badge?name=rss
[argocd-beets]: https://argo.gr.wtf/api/badge?name=beets
[argocd-lidarr]: https://argo.gr.wtf/api/badge?name=lidarr
[argocd-metabase]: https://argo.gr.wtf/api/badge?name=metabase


<!-- Badge Images -->

[drone-badge]: https://img.shields.io/github/v/release/harness/drone?label=Github&logo=github&style=flat-square
[argo-badge]: https://img.shields.io/github/v/release/argoproj/argo-cd?label=Github&logo=github&style=flat-square
[argo-badge]: https://img.shields.io/github/v/release/argoproj/argo-cd?label=Github&logo=github&style=flat-square
[zalando-badge]: https://img.shields.io/github/v/tag/zalando/postgres-operator?label=Github&logo=github&style=flat-square
[redis-badge]: https://img.shields.io/github/v/tag/spotahome/redis-operator?label=Github&logo=github&style=flat-square
[tailscale-badge]: https://img.shields.io/github/v/release/tailscale/tailscale?label=Github&logo=github&style=flat-square
[unifi-badge]: https://img.shields.io/docker/v/linuxserver/unifi-controller?label=Docker&sort=semver&logo=docker&style=flat-square
[adguard-badge]: https://img.shields.io/docker/v/adguard/adguardhome?label=Docker&color=blue&logo=docker&sort=semver&style=flat-square
[ha-badge]: https://img.shields.io/github/v/release/home-assistant/core?label=Github&logo=github&style=flat-square
[wyze-badge]: https://img.shields.io/github/v/release/mrlt8/docker-wyze-bridge?label=Github&logo=github&style=flat-square
[change-badge]: https://img.shields.io/github/v/release/dgtlmoon/changedetection.io?label=Github&logo=github&style=flat-square
