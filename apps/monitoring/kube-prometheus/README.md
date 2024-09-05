<p align="center">
  <img width="250" height="250" src="https://raw.githubusercontent.com/gruberdev/homelab/main/docs/assets/logos/kube-prometheus.png" />
  <br />
  <br />
  <a href="https://argo.raptor-beta.ts.net/applications/kube-prometheus-core"> <img src="https://argo.raptor-beta.ts.net/api/badge?name=kube-prometheus-core&revision=true" alt="ArgoCD Status Badge" /></a> &nbsp; <img src="https://img.shields.io/github/v/release/prometheus-community/helm-charts?label=Release&filter=kube-prometheus-stack-*&logo=github&sort=date&style=flat-square" />
</p>


### Description

> The `kube-prometheus-stack` monitoring Helm chart deploys a Kubernetes monitoring solution using Prometheus Operator, which includes Prometheus, Alertmanager, Grafana, and various service monitors. It’s designed for easy setup and management of monitoring and alerting components, configured to automatically discover and monitor cluster services and resources.
>
> The chart also bundles Grafana dashboards and Prometheus rules for Kubernetes-specific metrics, ensuring comprehensive monitoring coverage right out of the box.

### Relevant Links

- [Github repository][gh-uri]
- [Official Documentation][docs-uri]
- [Helm chart repository][helm-repo]

[docs-uri]: https://prometheus-operator.dev/docs/prologue/introduction/
[gh-uri]: https://github.com/prometheus-operator/kube-prometheus
[helm-repo]: https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack
