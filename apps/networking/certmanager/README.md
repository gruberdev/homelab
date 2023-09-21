
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

&nbsp;

### Important notes regarding ArgoCD deployment

> - The [application ArgoCD file for External-DNS][argocd-file] has `.spec.SyncOptions` value `ServerSideApply=true` set to `True`
>
> This fixes the following and similar errors related to recreating CRDs using ArgoCD:
>
> [`The ConfigMap is invalid: metadata.annotations: Too long: must have at most 262144 characters`][original-github-crd-issue]
>
> There's [an argument to be made `Replace=True` is faster when recreating large CRDs][github-discussion-crd-size], however, **this is not recommended to most CRDs**, as replacing resources tend to be more disruptive and generate unpredictable outcomes rather than using `ServerSideApply=true`.
>
> Resources regarding more details related to this particular problem:
>
> - [Fixing Argo CD “Too long must have at most 262144 bytes” error (ArthurKoziel.com)][tracking-error-explain-2] <sub>[(Mirror)][mirror-explain-2]</sub>
> - [How to Fix “Too long: must have at most 262144 bytes” in ArgoCD (FoxuTech.medium.com)][tracking-error-explain] <sub>[(Mirror)][mirror-explain-1]</sub>

### Important notes regarding the chart deployment:

[repo-uri]: https://github.com/cert-manager/cert-manager
[website-uri]: https://cert-manager.io/
[docs-uri]: https://cert-manager.io/docs/
[helm-uri]: https://github.com/cert-manager/cert-manager/tree/master/deploy/charts/cert-manager
[manifests-uri]: https://github.com/cert-manager/cert-manager/tree/master/deploy/manifests
[argocd-file]: https://github.com/gruberdev/homelab/blob/main/apps/argocd/base/networking/external-dns/cloudflare.yaml
[tracking-error-explain]: https://foxutech.medium.com/how-to-fix-too-long-must-have-at-most-262144-bytes-in-argocd-2a00cddbbe99
[mirror-explain-1]: https://web.archive.org/web/20230921184332/https://foxutech.medium.com/how-to-fix-too-long-must-have-at-most-262144-bytes-in-argocd-2a00cddbbe99
[tracking-error-explain-2]: https://www.arthurkoziel.com/fixing-argocd-crd-too-long-error/
[mirror-explain-2]: https://web.archive.org/web/20230921184359/https://www.arthurkoziel.com/fixing-argocd-crd-too-long-error/
[original-github-crd-issue]: https://github.com/argoproj/argo-cd/issues/820
[github-discussion-crd-size]: https://github.com/argoproj/argo-cd/issues/820#issuecomment-1371198413
