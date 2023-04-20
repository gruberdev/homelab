## How to create a new application/service

### Kustomize
1. Create the files on a Kustomize layout in the appropriate folder inside `apps/`
2. Create a new ArgoCD `Application` resource on `apps/argocd/base` inside the appropriate category folder, followed by creating an additional entry at `apps/argocd/kustomization.yaml` referencing it
4. If the `Deployment`/`StatefulSet` has a volume reference, create the `PVC` on `apps/data/storage/base` and create an entry for it on `apps/data/storage/kustomization.yaml`
5. Create a `Service` with `LoadBalancerClass` as `tailscale` if you want to expose it to the internal mesh, followed by a `Certificate` (and an `Ingress resource`)
6. Add the domain of step 4 to the ClusterIssuer (`apps/networking/certmanager/clusterIssuer.yaml`) as well.
