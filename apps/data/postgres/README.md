## Zalando PostgreSQL Operator

<p align="center">
  <img width="250" height="250" src="https://opensource.zalando.com/postgres-operator/docs/diagrams/logo.png" />
  <br />
  <img src="https://img.shields.io/github/v/release/zalando/postgres-operator?label=Latest%20Version&logo=github&style=for-the-badge" />
</p>

 ### Context and application description

> Zalando is a European online fashion retailer that has developed a PostgreSQL operator as part of their efforts to improve the reliability and scalability of their database infrastructure. The Zalando PostgreSQL operator is an open-source tool that is designed to make it easier to manage and operate PostgreSQL clusters in a Kubernetes environment.
>
> The operator provides a number of key features, including:
> - Provisioning and scaling of PostgreSQL clusters: The operator can be used to create and manage PostgreSQL clusters in Kubernetes, including the ability to scale the number of nodes in a cluster up or down as needed.
> - High availability: The operator is designed to provide high availability for PostgreSQL clusters, including the ability to automatically recover from failures and ensure that data is replicated across multiple nodes.
> - Management of database backups: The operator can be used to automate the process of creating and restoring backups of PostgreSQL clusters, making it easier to ensure that data is protected in the event of a failure.
> - Monitoring and alerting: The operator includes built-in monitoring and alerting capabilities, allowing you to track the health of your PostgreSQL clusters and receive notifications if there are any issues.
>
> Overall, the Zalando PostgreSQL operator is a useful tool for anyone looking to operate PostgreSQL clusters in a Kubernetes environment, providing a range of features that make it easier to manage and operate these clusters at scale.

### Associated Resources

- [ArgoCD][argo-uri]: Responsible for managing Kubernetes resources related to Zalando's operator.

### References and links

- [Github Repository][github-uri]
- [Documentation][docs-uri]
- [Example of a cluster resource][example-uri]
- [How to use automated secrets for log-in applications into clusters][howto-uri]

### Instructions for standalone deployment

```bash
# Inside this folder
kubectl apply -k ./
# Using root folder as context
kubectl apply -k ./apps/data/postgres
```

[github-uri]: https://github.com/zalando/postgres-operator
[argo-uri]: https://github.com/gruberdev/homelab/tree/main/apps/argocd
[howto-uri]: https://github.com/gruberdev/homelab/blob/f7981240d33ca1679587d206364b039d6191d7bf/apps/home/ha/base/deployment.yaml#L46-L51
[example-uri]: https://github.com/zalando/postgres-operator/blob/master/manifests/complete-postgres-manifest.yaml
[docs-uri]: https://postgres-operator.readthedocs.io/en/latest/
