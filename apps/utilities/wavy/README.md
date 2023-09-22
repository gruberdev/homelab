<p align="center">
  <img width="150" height="150" src="https://raw.githubusercontent.com/gruberdev/homelab/main/docs/assets/logos/wavy.png" />
</p>


### Application Description

> Wavy makes it possible to run containerized GUI desktop applications — think Inkscape or Libreoffice — on Kubernetes and makes them accessible via the browser. This workflow allows users to run applications in the cloud and access them from any device without needing to install any software. Wavy works by patching Kubernetes Pods that are annotated with wavy.squat.ai/enable=true to include the necessary tools.

- [Website][website-uri]
- [Official Documentation][docs-uri]

[website-uri]: https://github.com/wavyland/wavy
[docs-uri]: https://github.com/wavyland/wavy/blob/main/README.md

#### Annotations

The following annotations can be added to any Kubernetes Pod, DaemonSet, Deployment, ReplicaSet, StatefulSet, CronJob, or Job to configure Wavy:

|Name|type|examples|
|----|----|-------|
|[wavy.squat.ai/enable](#enable)|boolean|`"true"`|
|[wavy.squat.ai/basic-auth-secret](#basic-auth-secret)|string|`app-secret`|
|[wavy.squat.ai/tls-secret](#tls-secret)|string|`app-tls`|
|[wavy.squat.ai/host](#host)|boolean|`"true"`|
|[wavy.squat.ai/x](#x)|boolean|`"true"`|
|[wavy.squat.ai/expose-vnc](#expose-vnc)|boolean|`"true"`|
|[wavy.squat.ai/vnc-basic-auth-secret](#vnc-basic-auth-secret)|string|`app-secret`|
|[wavy.squat.ai/vnc-tls-secret](#vnc-tls-secret)|string|`app-tls`|

---
#### Example

```yaml
apiVersion: v1
kind: Pod
metadata:
  annotations:
    wavy.squat.ai/enable: "true"
    wavy.squat.ai/basic-auth-secret: signal
  labels:
    app.kubernetes.io/name: signal
  name: signal
spec:
  containers:
  - image: tianon/signal-desktop:6
    name: signal
    command:
    - signal-desktop
    args:
    - --no-sandbox
    - --user-data-dir=/root
---
apiVersion: v1
kind: Secret
metadata:
  labels:
    app.kubernetes.io/name: signal
  name: signal
type: kubernetes.io/basic-auth
stringData:
  username: user
  password: pass
```
