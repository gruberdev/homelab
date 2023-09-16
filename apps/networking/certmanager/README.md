
<p align="center">
  <img width="236" height="236" src="https://raw.githubusercontent.com/gruberdev/homelab/main/docs/assets/logos/certmanager.svg" />
  <br />
  <img src="https://img.shields.io/github/v/release/kubernetes-sigs/external-dns?label=Latest%20Version&logo=github&style=for-the-badge" />
</p>

### Description

> Cert-manager is a native Kubernetes certificate management controller. It helps with issuing certificates from a variety of sources like Let's Encrypt, HashiCorp Vault, or self-signed, and ensures certificates are valid and up-to-date.
>
> - Automated certificate issuance, renewal, and management.
> - Supports a variety of certificate sources including ACME, Vault, and self-signed.
> - Webhook functionalities for extensibility.
> - Mature ecosystem and community support.

&nbsp;

### Relevant Links

- [Website][website-uri]
- [Official Documentation][docs-uri]
- [Github Repository][repo-uri]
- [Helm chart][helm-uri]
- [Plain manifests for deployment][manifests-uri]

### Instructions for standalone deployment (**Requires ArgoCD**)

```bash
kubectl apply -f https://raw.githubusercontent.com/gruberdev/homelab/main/apps/argocd/base/networking/cert-manager.yaml -n argocd
```

[repo-uri]: https://github.com/cert-manager/cert-manager
[website-uri]: https://cert-manager.io/
[docs-uri]: https://cert-manager.io/docs/
[helm-uri]: https://github.com/cert-manager/cert-manager/tree/master/deploy/charts/cert-manager
[manifests-uri]: https://github.com/cert-manager/cert-manager/tree/master/deploy/manifests
