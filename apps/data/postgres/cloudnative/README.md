<p align="center">
  <img width="550" height="100" src="https://raw.githubusercontent.com/gruberdev/homelab/main/docs/assets/logos/cloudnative.png" />
  <br />
  <img src="https://img.shields.io/github/v/release/cloudnative-pg/cloudnative-pg?label=Latest%20Version&logo=github&style=for-the-badge" />
</p>

### Application description

> `Cloudnative-pg` is an open-source PostgreSQL operator created for Kubernetes, focusing on automation and high availability. It's designed to enable seamless management and operation of PostgreSQL clusters within Kubernetes environments.
>
> Key features of Cloudnative-pg include:
> - Automated provisioning and scaling of PostgreSQL clusters: Facilitates the creation, management, and scaling of PostgreSQL clusters in Kubernetes.
> - High availability: Ensures continuous operation and data replication across multiple nodes, providing robust failover mechanisms.
> - Efficient backup and restore capabilities: Simplifies the backup process and ensures easy restoration, safeguarding data integrity.
> - Advanced monitoring and alerting: Integrates monitoring tools for real-time insights into cluster health, with alerts for potential issues.
>

### Associated Resources

- [ArgoCD][argo-uri]: Responsible for managing Kubernetes resources related to Cloudnative-pg operator.

### References and links

- [Github Repository][github-uri]
- [Documentation][docs-uri]
- [Example of a cluster resource][example-uri]

### Instructions for standalone deployment

```bash
kubectl apply -k github.com/gruberdev/homelab/apps/data/postgres/cloudnative
```

[github-uri]: https://github.com/gruberdev/homelab
[argo-uri]: https://github.com/gruberdev/homelab/tree/main/apps/argocd
[example-uri]: https://github.com/gruberdev/homelab/blob/main/apps/services/n8n/base/db.yaml
[docs-uri]: https://postgres-operator.readthedocs.io/en/latest/
