<p align="center">
  <img width="350" height="250" src="../../docs/assets/logos/argo.svg"></img><br>
  <img src="https://img.shields.io/github/v/release/argoproj/argo-cd?label=Latest%20Version&logo=github&style=for-the-badge"></img>
</p>

### Description

> ArgoCD is a continuous delivery tool for Kubernetes that helps you keep your applications in sync with the desired state that you have defined in git. It uses a declarative configuration file to specify the desired state of your applications, and it continuously monitors the live state of your applications to ensure that they match the desired state.
>
> With ArgoCD, you can easily manage and automate the deployment of your applications, making it easy to keep your applications up-to-date and consistent across different environments.

### Reasons I chose ArgoCD over Flux

> - ArgoCD features a user-friendly web-based User Interface (UI) designed to facilitate the viewing and management of application states, promoting efficient team collaboration.
> - It implements fine-grained permission control, extending access rights to both internal and external resources within its control plane, offering enhanced security and resource management.
> - The provision of an Application Programming Interface (API) in ArgoCD allows for seamless integration with various tools and systems. This enhances workflow automation capabilities in continuous delivery and fosters interoperability with other Argo-branded tools.
> - The synchronization capabilities of ArgoCD include comprehensive health checks, ensuring reliable data reporting for application deployment status. Compared to FluxCD, ArgoCD's self-healing features are more extensive. It should be noted that FluxCD's sync hooks are limited to supporting Helm charts exclusively.
>
> **In summary, ArgoCD presents a comprehensive and feature-intensive solution for the management and automation of Kubernetes-based application deployments.**

&nbsp;

### Relevant Links

- [Website][website-uri]
- [Official Documentation][docs-uri]
- [Awesome ArgoCD][awesome-uri]

### Instructions for deployment

```bash
task argocd:install
```

[website-uri]: https://argoproj.github.io/cd/
[docs-uri]: https://argo-cd.readthedocs.io/en/stable/
[awesome-uri]: https://github.com/terrytangyuan/awesome-argo
