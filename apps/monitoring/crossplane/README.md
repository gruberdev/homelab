<p align="center">
<img width="250" height="250" src="https://cncf-branding.netlify.app/img/projects/crossplane/stacked/color/crossplane-stacked-color.svg"></br><img src="https://img.shields.io/github/v/release/crossplane/crossplane?label=Latest%20Version&logo=github&style=for-the-badge">
</p>

 ### Context and application description

> Crossplane is an open source multi-cloud control plane that aims to provide a consistent and unified interface for users to manage and interact with cloud resources across different cloud providers. It aims to provide a similar level of functionality to that of a cloud provider's native management tools, but with the added ability to manage resources across multiple cloud providers and on-premises infrastructure.
>
> It is very similar to Terraform, as in, Crossplane providers are akin to Terraform modules, and each cloud provider has their own specific set of custom resources. What make them different is that Crossplane focuses on individual components as Kubernetes resources, it also provides a way to create your custom resources just by modifying existing ones instead.

### Associated Resources

- [ArgoCD][argo-uri]: Responsible for deploying and managing my Crossplane instance.

### References and links

- [Official Website][website-uri]
- [Github Repository][github-uri]
- [Documentation][docs-uri]

### Instructions for standalone deployment

```bash
# Inside this folder
kubectl apply -k ./
# Using root folder as context
kubectl apply -k ./apps/monitoring/crossplane
```

[website-uri]: https://www.crossplane.io/
[github-uri]: https://github.com/crossplane/crossplane
[docs-uri]: https://docs.crossplane.io/v1.10/
[argo-uri]: https://github.com/gruberdev/homelab/tree/main/apps/argocd
