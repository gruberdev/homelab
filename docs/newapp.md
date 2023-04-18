## How to create a new application/service

### Kustomize
1. Create the files on a Kustomize layout in the appropriate folder inside `apps/`
2. Create a new ArgoCD `Application` resource on `apps/argocd/base` inside the appropriate category folder, followed by creating an additional entry at `apps/argocd/kustomization.yaml` referencing it
4. If the `Deployment`/`StatefulSet` has a volume reference, create the `PVC` on `apps/data/storage/base` and create an entry for it on `apps/data/storage/kustomization.yaml`
5. If the application has a `Certificate` (and an `Ingress resource`), the ClusterIssuer (`apps/networking/certmanager/clusterIssuer.yaml`) should have the new domain added to it.