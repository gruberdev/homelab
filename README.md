<br>
<p align="center">
  <img width="220" height="100" src="https://cncf-branding.netlify.app/img/projects/k3s/icon/black/k3s-icon-black.svg">
</p>

<h3 align="center">Homelab</h3>

<p align="center">
  <sub>Gitops managed k3s cluster</sub>
</p>

<p align="center">
  <img src="https://img.shields.io/github/last-commit/gruberdev/homelab?color=black&labelColor=black&label=last%20commit&logo=github&logoColor=cyan&style=flat-square">
</p>

<br>

---

<details>

<summary> <b>Implemented applications</b> </summary>
<br>

> |             **Application**            |   **Category**  |                       **Info**                      |     **Deployment Status**    | **Latest Semver**
> |:--------------------------------------:|:---------------:|:---------------------------------------------------:|:----------------------------:|:----------------------:|
> |          [ArgoCD][argocd-uri]          |    `GitOps`     |      <sub>[More details][homelab-argocd]</sub>      |       ![][argocd-core]       | ![][argo-badge]        |
> |    [Crossplane][crossplane-uri]        |    `GitOps`     |      <sub>[More details][homelab-crossplane]</sub>  |       ![][argocd-crossplane] | ![][crossplane-badge]  |
> |[<sub>Nvidia integration for k8s</sub>][nvidia-uri]|    `Driver`     |      <sub>[More details][homelab-nvidia]</sub>      |       ![][argocd-nvidia] | ![][nvidia-badge]  |
> | [<sub>Zalando PostgreSQL Operator</sub>][p-uri] |   `Databases`   |      <sub>[More details][homelab-zalando]</sub>     |      ![][argocd-zalando]     | ![][zalando-badge]  |
> |       [Redis Operator][redis-uri]      |   `Databases`   |       <sub>[More details][homelab-redis]</sub>      |       ![][argocd-redis]      |  ![][redis-badge]    |
> |  [Unifi Controller][service-unifi]     |   `Networking`  | <sub>[More details][homelab-unifi-controller]</sub> | ![][argocd-unifi-controller] | ![][unifi-badge]     |
> |     [kube-prometheus][service-kube]    |   `Monitoring`  |  <sub>[More details][homelab-kube]</sub>            |       ![][argocd-kube]       |   ![][kube-badge]    |
> |     [Hashicorp's Vault][vault-uri]     |    `Security`   |       <sub>[Chart Values][homelab-vault]</sub>      |       ![][argocd-vault]      |  ![][vault-badge]    |
> |     [Unifi Poller][poller-uri]        |   `Monitoring`  |      <sub>[More details][homelab-poller]</sub>      |      ![][argocd-poller]      | ![][poller-badge]    |
> |    [RSS Hub][service-rsshub]           |    `Services`   |        <sub>[More details][homelab-rsshub]</sub>    |        ![][argocd-rss-hub]   | ![][rsshub-badge]    |
> |            [n8n][n8n-uri]              |    `Services`   |        <sub>[More details][homelab-n8n]</sub>       |        ![][argocd-n8n]       |  ![][n8n-badge]      |
> |   [Wallabag][wallabag-uri]             |   `Services`   |        <sub>[More details][homelab-wyze]</sub>      |        ![][argocd-wallabag]  |  ![][wallabag-badge] |
> |   [Grocy][grocy-uri]                 |   `Services`   |        <sub>[More details][homelab-grocy]</sub>      |        ![][argocd-grocy]  |  ![][grocy-badge] |
> |   [Monica][monica-uri]                 |   `Services`   |        <sub>[More details][homelab-wyze]</sub>      |        ![][argocd-monica]    |  ![][monica-badge]   |
> |   [Changedetection.io][change-uri]     |   `Services`   |       <sub>[More details][homelab-change]</sub>      |        ![][argocd-change]    |  ![][change-badge]   |
> |           [Mango][service-mango]       |   `Media`       |  <sub>[More details][homelab-mango]</sub>           |  ![][argocd-mango]           |  ![][mango-badge]    |
> |       [Jellyfin][service-jellyfin]     |   `Media`       |  <sub>[More details][homelab-jellyfin]</sub>        |  ![][argocd-jellyfin]        |  ![][jellyfin-badge]   |
> |           [Sonarr][service-sonarr]     |   `Media`       |  <sub>[More details][homelab-sonarr]</sub>          |  ![][argocd-sonarr]          |  ![][sonarr-badge]   |
> |       [Prowlarr][service-prowlarr]     |   `Media`       |  <sub>[More details][homelab-prowlarr]</sub>        |  ![][argocd-prowlarr]       |  ![][prowlarr-badge]   |

> |      [Home Assistant][service-ha]      |   `Smart Home`   |        <sub>[More details][homelab-ha]</sub>        |        ![][argocd-ha]        |    ![][ha-badge]     |
> |   [Wyze API Bridge][service-wyze]      |   `Smart Home`   |        <sub>[More details][homelab-wyze]</sub>      |        ![][argocd-wyze]      |  ![][wyze-badge]     |
> |    [Tailscale-operator][tail-uri]        | `Networking`  | <sub>[More details][homelab-tailscale]</sub>         |     ![][argocd-tailscale]   |![][tailscale-badge]  |
> |   [Cloudflared <sub>(as proxies)</sub>][cf-uri]  |   `Networking`  | <sub>[More details][homelab-cloudflared]</sub>  |                        |   ![][cfd-badge]     |

<!-- >
> |           [Beets][service-beets]       |   `Media`       |  <sub>[More details][homelab-beets]</sub>           |       ![][argocd-beets]      |   ![][beets-badge]   |
> |           [Lidarr][service-lidarr]     |   `Media`       |  <sub>[More details][homelab-lidarr]</sub>          |  ![][argocd-lidarr]          |  ![][lidarr-badge]   |
> |    [Metabase][service-metabase]        |   `Analytics`   |       <sub>[More details][homelab-metabase]</sub>   |   ![][argocd-metabase]       | ![][metabase-badge] |
> |       [Matrix Synapse][matrix-uri]     |    `Services`   |        <sub>[More details][homelab-matrix]</sub>    |        ![][argocd-matrix]    |  ![][matrix-badge]   |


#### Matrix-related

> |         **Name**        | **Info**           | **Kind** | **Deployment Status**| **Latest Semver**  |
> |:-----------------------:|:------------------:|:--------:|:-----------------:|:---------------------:|
> |         Elements        |                    | `Client` |                   |                       |
> |      mautrix-slack      |                    | `Bridge` |                   |                       |
> |  matrix-discord-bridge  |                    | `Bridge` |                   |                       |
> |     mautrix-facebook    |                    | `Bridge` |                   |                       |
> |     mautrix-whatsapp    |                    | `Bridge` |                   |                       |
> |     mautrix-telegram    |                    | `Bridge` |                   |                       |
> |      mautrix-signal     |                    | `Bridge` |                   |                       |
> |    mautrix-instagram    |                    | `Bridge` |                   |                       |
> | mautrix-puppet-hangouts |                    | `Bridge` |                   |                       |
> |     mautrix-twitter     |                    | `Bridge` |                   |                       |
> |     go-skype-bridge     |                    | `Bridge` |                   |                       |
> |     mx-puppet-steam     |                    | `Bridge` |                   |                       |
> |     linkedin-bridge     |                    | `Bridge` |                   |                       |
> |         botdarr         |                    | `Utilities` |                   |                       |
<-->

---

</details>

<details>

<summary> <b>Cluster Utilities</b>
</summary>

<br>

> - [argocd-image-updater][argocd-updater-uri] &nbsp; <sub>Automatically update a deployment's image version tag and write it back to a Github repository. [Example.][argocd-updater-ex]</sub>
> - [Reflector][reflector-uri] &nbsp; <sub>Replicate a `Secret` or `configMap` between namespaces automatically.</sub>
> - [Descheduler][descheduler-uri] &nbsp; <sub>Monitors if workloads are evenly distributed through nodes and cleans failed pods that remained as orphans/stuck.</sub>
> - [Eraser][eraser-uri] &nbsp; <sub>A daemonset responsible for cleaning up outdated images stored in the cluster nodes.</sub>
> - [Kube-fledged][kube-fledged-uri] &nbsp; <sub>Allows for image caching on every node in the cluster, in order to speed up deployments of already existing applications.</sub>
> - [Kured][kured-uri] &nbsp; <sub>All the cluster's nodes will be properly drained before rebooting cordoned back once they're online.</sub>
> - [Reloader][reloader-uri] &nbsp; <sub>Everytime a `configMap` or a `Secret` resource is created or changed, the pods that use them will be reloaded.</sub>
> - [Trivy operator][trivy-uri] &nbsp; <sub>Generates security reports automatically in response to workload and other changes to the cluster.</sub>
> - [Botkube][botkube-uri] &nbsp; <sub>Monitors cluster events and sends a message through Discord or Slack, capable of alerting for every kind of cluster-related issue.</sub>
> - [Democratic-CSI][democratic-uri] &nbsp; <sub>[A CSI implementation][csi-uri] for multiple ZFS-based storage systems.</sub>
> - [node-problem-detector][node-problem-uri] &nbsp; <sub>Detects if a node has been affected by an issue such as faulty hardware or kernel deadlocks, preventing scheduling.</sub>
> - [node-feature-discovery][feature-discovery-uri] &nbsp; <sub>Detects hardware information, changes and other data and uses that to increase efficiency of the cluster.</sub>
> - [Chaos Mesh][chaos-mesh-uri] &nbsp; <sub>A Cloud-native, lightweight, no-dependencies required Chaos Engineering Platform for Kubernetes.</sub>

---

</details>

<details>

<summary> <b>Repository Stats</b> </summary>

<br>

![Alt](https://repobeats.axiom.co/api/embed/576d4457404c7c5ba81a07cecd2b440163eebd63.svg "Repobeats analytics image")

</details>

<!-- Misc -->
[csi-uri]: https://kubernetes-csi.github.io/docs/
<!-- Tech tools URIs -->

[drone-uri]: https://www.drone.io/
[crossplane-uri]: https://www.crossplane.io/
[nvidia-uri]: https://github.com/NVIDIA/k8s-device-plugin
[nfs-uri]: https://github.com/kubernetes-sigs/nfs-subdir-external-provisioner
[argocd-uri]: https://argoproj.github.io/cd/
[homeassistant-uri]: https://www.home-assistant.io/
[adguard-uri]: https://adguard.com/en/adguard-home/overview.html
[kuma-uri]: https://github.com/louislam/uptime-kuma
[service-rssgen]: https://github.com/damoeb/rss-proxy
[service-rsshub]: https://github.com/DIYgod/RSSHub
[service-beets]: https://github.com/beetbox/beets
[service-lidarr]: https://github.com/Lidarr/Lidarr
[service-metabase]: https://www.metabase.com/
[service-kube]: https://github.com/prometheus-operator/kube-prometheus
[service-ha]: https://www.home-assistant.io/
[change-uri]: https://github.com/dgtlmoon/changedetection.io/
[service-adguard]: https://adguard.com/en/adguard-home/overview.html
[service-unifi]: https://github.com/jacobalberty/unifi-docker
[tail-uri]: https://tailscale.com/kb/1151/what-is-tailscale/
[matrix-uri]: https://matrix.org/
[service-n8n]: https://n8n.io/
[p-uri]: https://github.com/zalando/postgres-operator
[service-wyze]: https://github.com/mrlt8/docker-wyze-bridge
[change-uri]: https://github.com/dgtlmoon/changedetection.io
[redis-uri]: https://github.com/spotahome/redis-operator
[democratic-csi-uri]: https://longhorn.io/
[n8n-uri]: https://n8n.io/
[vault-uri]: https://github.com/hashicorp/vault
[grocy-uri]: https://github.com/grocy/grocy
[flame-uri]: https://github.com/pawelmalak/flame
[poller-uri]: https://github.com/unpoller/unpoller
[cf-uri]: https://github.com/cloudflare/cloudflared
[service-sonarr]: https://github.com/Sonarr/Sonarr
[service-prowlarr]: https://github.com/Prowlarr/Prowlarr
[service-mango]: https://github.com/getmango/Mango
[service-jellyfin]: https://github.com/jellyfin/jellyfin
[wallabag-uri]: https://github.com/wallabag/wallabag
[domainmod-uri]: https://github.com/domainmod/domainmod
[monica-uri]: https://github.com/monicahq/monica
[crossplane-uri]: https://github.com/crossplane/crossplane
[democratic-uri]: https://github.com/democratic-csi/democratic-csi

<!-- Cluster Utilities/Internal Tooling -->

[argocd-updater-ex]: https://github.com/gruberdev/homelab/commit/75c00de5eba89b9978ed241e67e638e4d838fae4
[argocd-updater-uri]: https://argocd-image-updater.readthedocs.io/en/stable/
[descheduler-uri]: https://github.com/kubernetes-sigs/descheduler
[kube-fledged-uri]: https://github.com/senthilrch/kube-fledged
[kured-uri]: https://github.com/kubereboot/charts/tree/main/charts/kured
[reflector-uri]: https://github.com/emberstack/kubernetes-reflector
[reloader-uri]: https://github.com/stakater/Reloader
[botkube-uri]: https://botkube.io/
[argocd-notifications-uri]: https://argocd-notifications.readthedocs.io/en/stable/
[node-problem-uri]: https://github.com/kubernetes/node-problem-detector
[feature-discovery-uri]: https://github.com/kubernetes-sigs/node-feature-discovery
[chaos-mesh-uri]: https://chaos-mesh.org/
[trivy-uri]: https://github.com/aquasecurity/trivy-operator
[eraser-uri]: https://github.com/azure/eraser

<!-- Project Folders -->

[homelab-argocd]: https://github.com/gruberdev/homelab/tree/main/apps/argocd
[homelab-drone]: https://github.com/gruberdev/homelab/tree/main/apps/drone
[homelab-ha]: https://github.com/gruberdev/homelab/tree/main/apps/home/ha
[homelab-wyze]: https://github.com/gruberdev/homelab/tree/main/apps/home/wyze
[homelab-nvidia]: https://github.com/gruberdev/homelab/blob/main/docs/nvidia.md
[homelab-nfs]: https://github.com/gruberdev/homelab/blob/main/apps/argocd/base/core/nfs.yaml
[homelab-kube]: https://github.com/gruberdev/homelab/blob/main/apps/argocd/base/monitoring/kube-prometheus.yaml
[homelab-kuma]: https://github.com/gruberdev/homelab/tree/main/apps/monitoring/uptime-kuma
[homelab-crossplane]: https://github.com/gruberdev/homelab/tree/main/apps/monitoring/crossplane
[homelab-adguard]: https://github.com/gruberdev/homelab/tree/main/apps/networking/adguard
[homelab-unifi-controller]: https://github.com/gruberdev/homelab/tree/main/apps/networking/unifi/controller
[homelab-zalando]: https://github.com/gruberdev/homelab/tree/main/apps/data/postgres/operator
[homelab-change]: https://github.com/gruberdev/homelab/tree/main/apps/services/changedetection
[homelab-redis]: https://github.com/gruberdev/homelab/blob/main/apps/argocd/base/core/redis.yaml
[homelab-grocy]: https://github.com/gruberdev/homelab/tree/main/apps/services/grocy
[homelab-mysql]: https://github.com/gruberdev/homelab/blob/main/docs/mysql.md
[homelab-tailscale]: https://github.com/gruberdev/homelab/tree/main/apps/networking/tailscale
[homelab-vault]: https://github.com/gruberdev/homelab/blob/main/apps/argocd/base/apps/vault.yaml
[homelab-matrix]: https://github.com/gruberdev/homelab/tree/main/apps/matrix
[homelab-n8n]: https://github.com/gruberdev/homelab/tree/main/apps/services/n8n
[homelab-flame]: https://github.com/gruberdev/homelab/tree/main/apps/monitoring/flame
[homelab-poller]: https://github.com/gruberdev/homelab/tree/main/apps/networking/unifi/poller
[homelab-cloudflared]: https://github.com/gruberdev/homelab/tree/main/apps/networking/cloudflared
[homelab-rssgen]: https://github.com/gruberdev/homelab/tree/main/apps/services/rss/gen
[homelab-sonarr]: https://github.com/gruberdev/homelab/tree/main/apps/services/media/sonarr
[homelab-prowlarr]: https://github.com/gruberdev/homelab/tree/main/apps/services/media/prowlarr
[homelab-rsshub]: https://github.com/gruberdev/homelab/tree/main/apps/services/rss/hub
[homelab-beets]: https://github.com/gruberdev/homelab/tree/main/apps/services/media/beets
[homelab-lidarr]: https://github.com/gruberdev/homelab/tree/main/apps/services/media/lidarr
[homelab-metabase]: https://github.com/gruberdev/homelab/tree/main/apps/data/metabase
[homelab-mango]: https://github.com/gruberdev/homelab/tree/main/apps/services/media/mango
[homelab-jellyfin]: https://github.com/gruberdev/homelab/tree/main/apps/services/media/jellyfin

<!-- ArgoCD Status Badges -->

[argocd-kube]: https://argo.gr.wtf/api/badge?name=kube-prometheus
[argocd-nvidia]: https://argo.gr.wtf/api/badge?name=nvidia
[argocd-nfs]: https://argo.gr.wtf/api/badge?name=nfs-provisioner
[argocd-crossplane]: https://argo.gr.wtf/api/badge?name=crossplane
[argocd-ha]: https://argo.gr.wtf/api/badge?name=homeassistant
[argocd-democratic-csi]: https://argo.gr.wtf/api/badge?name=longhorn
[argocd-kuma]: https://argo.gr.wtf/api/badge?name=uptime-kuma
[argocd-grocy]: https://argo.gr.wtf/api/badge?name=grocy
[argocd-adguard]:https://argo.gr.wtf/api/badge?name=adguard
[argocd-unifi-controller]: https://argo.gr.wtf/api/badge?name=unifi-controller
[argocd-core]: https://argo.gr.wtf/api/badge?name=argocd
[argocd-n8n]: https://argo.gr.wtf/api/badge?name=n8n
[argocd-vault]: https://argo.gr.wtf/api/badge?name=vault
[argocd-ha]: https://argo.gr.wtf/api/badge?name=homeassistant
[argocd-wyze]: https://argo.gr.wtf/api/badge?name=wyze-bridge
[argocd-redis]: https://argo.gr.wtf/api/badge?name=redis
[argocd-zalando]: https://argo.gr.wtf/api/badge?name=postgres
[argocd-matrix]: https://argo.gr.wtf/api/badge?name=synapse
[argocd-mysql]: https://argo.gr.wtf/api/badge?name=mysql-operator
[argocd-changedetection]: https://argo.gr.wtf/api/badge?name=changedetection
[argocd-tailscale]: https://argo.gr.wtf/api/badge?name=tailscale
[argocd-poller]: https://argo.gr.wtf/api/badge?name=unifi-poller
[argocd-rss-gen]: https://argo.gr.wtf/api/badge?name=rss-gen
[argocd-rss-hub]: https://argo.gr.wtf/api/badge?name=rss-hub
[argocd-change]: https://argo.gr.wtf/api/badge?name=changedetection
[argocd-beets]: https://argo.gr.wtf/api/badge?name=beets
[argocd-lidarr]: https://argo.gr.wtf/api/badge?name=lidarr
[argocd-metabase]: https://argo.gr.wtf/api/badge?name=metabase
[argocd-prowlarr]: https://argo.gr.wtf/api/badge?name=prowlarr
[argocd-sonarr]: https://argo.gr.wtf/api/badge?name=sonarr
[argocd-mango]: https://argo.gr.wtf/api/badge?name=mango
[argocd-jellyfin]: https://argo.gr.wtf/api/badge?name=jellyfin
[argocd-wallabag]: https://argo.gr.wtf/api/badge?name=wallabag
[argocd-domainmod]: https://argo.gr.wtf/api/badge?name=domainmod
[argocd-monica]: https://argo.gr.wtf/api/badge?name=monica
[argocd-crossplane]: https://argo.gr.wtf/api/badge?name=crossplane
[argocd-tailscale]: https://argo.gr.wtf/api/badge?name=tailscale


<!-- Badge Images -->

[argo-badge]: https://img.shields.io/github/v/release/argoproj/argo-cd?label=Github&logo=github&style=flat-square
[kube-badge]: https://img.shields.io/github/v/release/prometheus-operator/kube-prometheus?label=Github&logo=github&style=flat-square
[democratic-csi-badge]: https://img.shields.io/github/v/tag/longhorn/longhorn?label=Github&logo=github&style=flat-square
[zalando-badge]: https://img.shields.io/github/v/tag/zalando/postgres-operator?label=Github&logo=github&style=flat-square
[redis-badge]: https://img.shields.io/github/v/tag/spotahome/redis-operator?label=Github&logo=github&style=flat-square
[tailscale-badge]: https://img.shields.io/github/v/release/tailscale/tailscale?label=Github&logo=github&style=flat-square
[nvidia-badge]: https://img.shields.io/github/v/release/NVIDIA/k8s-device-plugin?label=Github&logo=github&style=flat-square
[unifi-badge]: https://img.shields.io/github/v/release/jacobalberty/unifi-docker?label=Github&logo=github&style=flat-square
[adguard-badge]: https://img.shields.io/docker/v/adguard/adguardhome?label=Docker&color=blue&logo=docker&sort=semver&style=flat-square
[ha-badge]: https://img.shields.io/github/v/release/home-assistant/core?label=Github&logo=github&style=flat-square
[wyze-badge]: https://img.shields.io/github/v/release/mrlt8/docker-wyze-bridge?label=Github&logo=github&style=flat-square
[change-badge]: https://img.shields.io/github/v/release/dgtlmoon/changedetection.io?label=Github&logo=github&style=flat-square
[grocy-badge]: https://img.shields.io/github/v/release/grocy/grocy?label=Github&logo=github&style=flat-square
[n8n-badge]: https://img.shields.io/docker/v/n8nio/n8n?label=Docker&color=blue&logo=docker&sort=semver&style=flat-square
[vault-badge]: https://img.shields.io/github/v/release/hashicorp/vault?label=Github&logo=github&style=flat-square
[flame-badge]: https://img.shields.io/github/v/release/pawelmalak/flame?label=Github&logo=github&sort=semver&style=flat-square
[poller-badge]: https://img.shields.io/github/v/release/unpoller/unpoller?label=Github&logo=github&sort=semver&style=flat-square
[cfd-badge]: https://img.shields.io/docker/v/erisamoe/cloudflared?label=Docker&color=blue&logo=docker&sort=semver&style=flat-square
[rssgen-badge]: https://img.shields.io/github/v/tag/damoeb/rss-proxy?label=Github&logo=github&style=flat-square
[nfs-badge]: https://img.shields.io/github/v/tag/kubernetes-sigs/nfs-subdir-external-provisioner?label=Github&logo=github&style=flat-square
[matrix-badge]: https://img.shields.io/github/v/release/matrix-org/synapse?label=Github&logo=github&style=flat-square
[crossplane-badge]: https://img.shields.io/github/v/release/crossplane/crossplane?label=Github&logo=github&style=flat-square
[prowlarr-badge]: https://img.shields.io/github/v/release/Prowlarr/Prowlarr?label=Github&logo=github&style=flat-square
[sonarr-badge]: https://img.shields.io/github/v/release/linuxserver/docker-sonarr?label=Github&logo=github&style=flat-square
[beets-badge]: https://img.shields.io/github/v/tag/beetbox/beets?label=Github&logo=github&style=flat-square
[lidarr-badge]: https://img.shields.io/github/v/release/lidarr/lidarr?label=Github&color=blue&logo=github&sort=semver&style=flat-square
[domainmod-badge]: https://img.shields.io/github/v/release/domainmod/domainmod?label=Github&color=blue&logo=github&sort=semver&style=flat-square
[monica-badge]: https://img.shields.io/github/v/release/monicahq/monica?label=Github&color=blue&logo=github&sort=semver&style=flat-square
[crossplane-badge]: https://img.shields.io/github/v/release/crossplane/crossplane?label=Github&color=blue&logo=github&sort=semver&style=flat-square
[metabase-badge]: https://img.shields.io/docker/v/metabase/metabase?label=Docker&color=blue&logo=docker&sort=semver&style=flat-square
[wallabag-badge]: https://img.shields.io/docker/v/wallabag/wallabag?label=Docker&color=blue&logo=docker&sort=semver&style=flat-square
[rsshub-badge]: https://img.shields.io/static/v1?label=No&message=version%20provided&color=gray&labelColor=gray&style=flat-square
[mango-badge]: https://img.shields.io/github/v/release/getmango/mango?label=Github&logo=github&style=flat-square
[jellyfin-badge]: https://img.shields.io/github/v/release/jellyfin/jellyfin?label=Github&logo=github&style=flat-square
