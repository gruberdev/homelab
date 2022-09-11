<br>
<p align="center">
  <img width="220" height="100" src="https://cncf-branding.netlify.app/img/projects/k3s/icon/white/k3s-icon-white.svg">
</p>

<h3 align="center">Homelab</h3>

<p align="center">
  <sub>Gitops managed k3s cluster</sub>
</p>

<p align="center">
  <a href='https://drone.gr.wtf' target='_blank'><img src="https://img.shields.io/drone/build/gruberdev/homelab/main?server=https%3A%2F%2Fdrone.gr.wtf&logo=drone&labelColor=1F1F1F&logoColor=41dde8&style=flat-square&label=CI%20Status"></a> &nbsp;
  <img src="https://img.shields.io/github/last-commit/gruberdev/homelab?color=black&labelColor=black&label=last%20commit&logo=github&logoColor=cyan&style=flat-square">
</p>

<br>

---

<details>

<summary> <b>Implemented applications</b> </summary>
<br>

<sub>*(Some of the applications listed here may not be online, still, their resources are present in this repository if listed below.)*</sub>
> |             **Application**            |   **Category**  |                       **Info**                      |     **Deployment Status**    | **Latest Semver**
> |:--------------------------------------:|:---------------:|:---------------------------------------------------:|:----------------------------:|:----------------------:|
> |          [Drone CI][drone-uri]         | `CI/CD Tooling` |       <sub>[More details][homelab-drone]</sub>      |       ![][argocd-drone]      | ![][drone-badge]    |
> |          [ArgoCD][argocd-uri]          | `CI/CD Tooling` |      <sub>[More details][homelab-argocd]</sub>      |       ![][argocd-core]       | ![][argo-badge]     |
> | [MySQL Operator][mysql-uri] |   `Databases`   |      <sub>[More details][homelab-mysql]</sub>     |      ![][argocd-mysql]     | ![][mysql-badge]  |
> | [<sub>Zalando PostgreSQL Operator</sub>][p-uri] |   `Databases`   |      <sub>[More details][homelab-zalando]</sub>     |      ![][argocd-zalando]     | ![][zalando-badge]  |
> |       [Redis Operator][redis-uri]      |   `Databases`   |       <sub>[More details][homelab-redis]</sub>      |       ![][argocd-redis]      |  ![][redis-badge]   |
> |[Tailscale <sub>(as sidecars)</sub>][tail-uri]| `Networking`  | <sub>[More details][homelab-tailscale]</sub>    |                              |![][tailscale-badge] |
> |  [Unifi Controller][service-unifi]     |   `Networking`  | <sub>[More details][homelab-unifi-controller]</sub> | ![][argocd-unifi-controller] | ![][unifi-badge]    |
> |    [AdGuard DNS][service-adguard]      |   `Networking`  |      <sub>[More details][homelab-adguard]</sub>     |      ![][argocd-adguard]     | ![][adguard-badge]  |
> |      [Home Assistant][service-ha]      |   `Monitoring`  |        <sub>[More details][homelab-ha]</sub>        |        ![][argocd-ha]        |    ![][ha-badge]    |
> |   [Wyze API Bridge][service-wyze]      |   `Monitoring`  |        <sub>[More details][homelab-wyze]</sub>      |        ![][argocd-wyze]      |  ![][wyze-badge]    |
> |  [Changedetection.io][change-uri]      |   `Monitoring`  |  <sub>[More details][homelab-changedetection]</sub> |  ![][argocd-changedetection] | ![][change-badge]  |
> |            [n8n][n8n-uri]              |    `Services`   |        <sub>[More details][homelab-n8n]</sub>       |        ![][argocd-n8n]       |  ![][n8n-badge]     |
> |     [Hashicorp's Vault][vault-uri]     |    `Security`   |       <sub>[Chart Values][homelab-vault]</sub>      |       ![][argocd-vault]      |  ![][vault-badge]   |
> |       [Flame Dashboard][flame-uri]     |    `Services`   |       <sub>[More details][homelab-flame]</sub>      |       ![][argocd-flame]      | ![][flame-badge]    |
> |     [Unifi Poller][poller-uri]         |   `Monitoring`  |      <sub>[More details][homelab-poller]</sub>      |      ![][argocd-poller]      | ![][poller-badge]  |
> |   [Cloudflared <sub>(as proxies)</sub>][cf-uri]  |   `Networking`  | <sub>[More details][homelab-cloudflared]</sub>  |                        |   ![][cfd-badge]   |
> |         [Wakapi][wakapi-uri]           |    `Services`   |        <sub>[More details][homelab-wakapi]</sub>    |        ![][argocd-wakapi]    | ![][wakapi-badge]   |
> | [RSS Gen/Proxy][service-rssgen]        |    `Services`   |        <sub>[More details][homelab-rssgen]</sub>    |        ![][argocd-rss]       |  ![][rssgen-badge]   |
> |    [RSS Hub][service-rsshub]           |    `Services`   |        <sub>[More details][homelab-rsshub]</sub>    |        ![][argocd-rss]       | ![][rsshub-badge]   |
 > |           [Beets][service-beets]       |   `Media`  |  <sub>[More details][homelab-beets]</sub>               |       ![][argocd-beets]      |   ![][beets-badge]   |
> |           [Lidarr][service-lidarr]     |   `Media`  |  <sub>[More details][homelab-lidarr]</sub> |  ![][argocd-lidarr]      |  ![][lidarr-badge]   |
> |           [Mango][service-mango]       |   `Media`  |  <sub>[More details][homelab-mango]</sub> |  ![][argocd-mango]        |  ![][mango-badge]   |
> |           [Jellyfin][service-jellyfin]   |   `Media`  |  <sub>[More details][homelab-jellyfin]</sub> |  ![][argocd-jellyfin]        |  ![][jellyfin-badge]   |
> |         [Metabase][service-metabase]             |   `Analytics`   |       <sub>[More details][homelab-metabase]</sub> |   ![][argocd-metabase] | ![][metabase-badge] |

#### Matrix utilities
> |         **Name**        | **Info** | **Kind** | **Deployment Status**| **Latest Semver**  |
> |:-----------------------:|:--------:|:--------:|:-----------------:|:---------------------:|
> |         Elements        |          |   `UI`   |                   |                       |
> |      mautrix-slack      |          |          |                   |                       |
> |  matrix-discord-bridge  |          |          |                   |                       |
> |     mautrix-facebook    |          |          |                   |                       |
> |     mautrix-whatsapp    |          |          |                   |                       |
> |     mautrix-telegram    |          |          |                   |                       |
> |      mautrix-signal     |          |          |                   |                       |
> |    mautrix-instagram    |          |          |                   |                       |
> | mautrix-puppet-hangouts |          |          |                   |                       |
> |     mautrix-twitter     |          |          |                   |                       |
> |     go-skype-bridge     |          |          |                   |                       |
> |     mx-puppet-steam     |          |          |                   |                       |
> |     linkedin-bridge     |          |          |                   |                       |
> |         botdarr         |          |          |                   |                       |

---

</details>

<details>

<summary> <b>Cluster Utilities</b>
</summary>

<br>

> - [argocd-notifications][argocd-notifications-uri] &nbsp; <sub>Alerts the cluster administrator through multiple channels about events related to ArgoCD applications and deployments.</sub>
> - [argocd-image-updater][argocd-updater-uri] &nbsp; <sub>Automatically update a deployment's image version tag and write it back to a Github repository. [Example.][argocd-updater-ex]</sub>
> - [argocd-commenter][argocd-commenter-uri] &nbsp; <sub>Notify ArgoCD Application status via Pull Request comment or GitHub Deployment.</sub>
> - [reflector][reflector-uri] &nbsp; <sub>Replicate a `Secret` or `configMap` between namespaces automatically.</sub>
> - [descheduler][descheduler-uri] &nbsp; <sub>Monitors if workloads are evenly distributed through nodes and cleans failed pods that remained as orphans/stuck.</sub>
> - [kube-fledged][kube-fledged-uri] &nbsp; <sub>Allows for image caching on every node in the cluster, in order to speed up deployments of already existing applications.</sub>
> - [kured][kured-uri] &nbsp; <sub>All the cluster's nodes will be properly drained before rebooting cordoned back once they're online.</sub>
> - [reloader][reloader-uri] &nbsp; <sub>Everytime a `configMap` or a `Secret` resource is created or changed, the pods that use them will be reloaded.</sub>
> - [botkube][botkube-uri] &nbsp; <sub>Monitors cluster events and sends a message through Discord or Slack, capable of alerting for every kind of cluster-related issue.</sub>
> - [node-problem-detector][node-problem-uri] &nbsp; <sub>Detects if a node has been affected by an issue such as faulty hardware or kernel deadlocks, preventing scheduling.</sub>
> - [node-feature-discovery][feature-discovery-uri] &nbsp; <sub>Detects hardware information, changes and other data and uses that to increase efficiency of the cluster.</sub>

---

</details>

<details>

<summary> <b>Repository & CI Tooling</b>
</summary>

<br>

> - [drone-skip-pipeline][drone-skip-pipeline-uri] &nbsp; <sub>Skip Drone CI steps based on files changes</sub>
> - [drone-github-comment][drone-github-uri] &nbsp; <sub>It takes the output of a step and comments on a Github pull request. [Example.][github-comment-example]</sub>
> - [yamllint][yamllint-uri] &nbsp; <sub>A linter for YAML files</sub>
> - [markdown-link-check][markdown-link-check-uri] &nbsp; <sub>Checks if markdown links are responding correctly</sub>

---

</details>


<details>

<summary> <b>To be implemented</b> </summary>

&nbsp;

> #### Monitoring and k8s utilities:
>
> - Chaos Mesh for Chaos engineering
> - Finish implementing `kube-prometheus`
>
> #### Services and applications:
>
> - Matrix
>   - Matrix bridges and double-puppets
> - Media related services
>   - Prowlarr
>   - Bazarr
>   - Radarr
>   - Sonarr
> - Domainmod
> - Monica
> - Wallabag
> - Frigate for Home Assistant
>
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
[service-unifi]: https://github.com/jacobalberty/unifi-docker
[tail-uri]: https://tailscale.com/kb/1151/what-is-tailscale/
[service-n8n]: https://n8n.io/
[p-uri]: https://github.com/zalando/postgres-operator
[service-wyze]: https://github.com/mrlt8/docker-wyze-bridge
[change-uri]: https://github.com/dgtlmoon/changedetection.io
[redis-uri]: https://github.com/spotahome/redis-operator
[n8n-uri]: https://n8n.io/
[vault-uri]: https://github.com/hashicorp/vault
[flame-uri]: https://github.com/pawelmalak/flame
[poller-uri]: hhttps://github.com/unpoller/unpoller
[cf-uri]: https://github.com/cloudflare/cloudflared
[wakapi-uri]: https://github.com/muety/wakapi
[service-mango]: https://github.com/getmango/Mango
[service-jellyfin]: https://github.com/jellyfin/jellyfin
[mysql-uri]: https://github.com/jellyfin/jellyfin

<!-- Shield Badges -->

[drone-img]: https://img.shields.io/drone/build/gruberdev/homelab?server=https%3A%2F%2Fdrone.gruber.dev.br&logo=drone&labelColor=1F1F1F&logoColor=41dde8&style=flat-square&label=Drone%20CI

<!-- Cluster Utilities/Internal Tooling -->

[argocd-updater-ex]: https://github.com/gruberdev/homelab/commit/75c00de5eba89b9978ed241e67e638e4d838fae4
[argocd-updater-uri]: https://argocd-image-updater.readthedocs.io/en/stable/
[argocd-commenter-uri]: https://github.com/int128/argocd-commenter
[descheduler-uri]: https://github.com/kubernetes-sigs/descheduler
[kube-fledged-uri]: https://github.com/senthilrch/kube-fledged
[kured-uri]: https://github.com/weaveworks/kured/tree/main/charts/kured
[reflector-uri]: https://github.com/emberstack/kubernetes-reflector
[reloader-uri]: https://github.com/stakater/Reloader
[botkube-uri]: https://botkube.io/
[argocd-notifications-uri]: https://argocd-notifications.readthedocs.io/en/stable/
[node-problem-uri]: https://github.com/kubernetes/node-problem-detector
[feature-discovery-uri]: https://github.com/kubernetes-sigs/node-feature-discovery

<!-- Repository/CI Utilities -->

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
[homelab-mango]: https://github.com/gruberdev/homelab/tree/main/apps/services/media/mango
[homelab-jellyfin]: https://github.com/gruberdev/homelab/tree/main/apps/services/media/jellyfin
[homelab-mysql]: https://github.com/gruberdev/homelab/blob/main/apps/argocd/base/core/mysql.yaml

<!-- ArgoCD Status Badges -->

[argocd-drone]: https://argo.gr.wtf/api/badge?name=drone-server
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
[argocd-zalando]: https://argo.gr.wtf/api/badge?name=postgres
[argocd-changedetection]: https://argo.gr.wtf/api/badge?name=changedetection
[argocd-tailscale]: https://argo.gr.wtf/api/badge?name=tailscale
[argocd-flame]: https://argo.gr.wtf/api/badge?name=flame
[argocd-poller]: https://argo.gr.wtf/api/badge?name=unifi-poller
[argocd-wakapi]: https://argo.gr.wtf/api/badge?name=unifi-poller
[argocd-rss]: https://argo.gr.wtf/api/badge?name=rss
[argocd-beets]: https://argo.gr.wtf/api/badge?name=beets
[argocd-lidarr]: https://argo.gr.wtf/api/badge?name=lidarr
[argocd-metabase]: https://argo.gr.wtf/api/badge?name=metabase
[argocd-mango]: https://argo.gr.wtf/api/badge?name=mango
[argocd-jellyfin]: https://argo.gr.wtf/api/badge?name=jellyfin
[argocd-mysql]: https://argo.gr.wtf/api/badge?name=mysql-operator

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
[n8n-badge]: https://img.shields.io/docker/v/n8nio/n8n?label=Docker&color=blue&logo=docker&sort=semver&style=flat-square
[vault-badge]: https://img.shields.io/github/v/release/hashicorp/vault?label=Github&logo=github&style=flat-square
[flame-badge]: https://img.shields.io/github/v/release/pawelmalak/flame?label=Github&logo=github&sort=semver&style=flat-square
[poller-badge]: https://img.shields.io/github/v/release/unpoller/unpoller?label=Github&logo=github&sort=semver&style=flat-square
[cfd-badge]: https://img.shields.io/docker/v/erisamoe/cloudflared?label=Docker&color=blue&logo=docker&sort=semver&style=flat-square
[wakapi-badge]: https://img.shields.io/github/v/tag/muety/wakapi?label=Github&logo=github&style=flat-square
[rssgen-badge]: https://img.shields.io/github/v/tag/damoeb/rss-proxy?label=Github&logo=github&style=flat-square
[beets-badge]: https://img.shields.io/github/v/tag/beetbox/beets?label=Github&logo=github&style=flat-square
[lidarr-badge]: https://img.shields.io/github/v/release/lidarr/lidarr?label=Github&color=blue&logo=github&sort=semver&style=flat-square
[metabase-badge]: https://img.shields.io/docker/v/metabase/metabase?label=Docker&color=blue&logo=docker&sort=semver&style=flat-square
[rsshub-badge]: https://img.shields.io/static/v1?label=No&message=version%20provided&color=gray&labelColor=gray&style=flat-square
[mango-badge]: https://img.shields.io/github/v/release/getmango/mango?label=Github&logo=github&style=flat-square
[jellyfin-badge]: https://img.shields.io/github/v/release/jellyfin/jellyfin?label=Github&logo=github&style=flat-square
[mysql-badge]: https://img.shields.io/github/v/release/bitpoke/mysql-operator?label=Github&logo=github&style=flat-square
