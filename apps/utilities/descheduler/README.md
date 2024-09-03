## Descheduler

<p align="center">
  <a href="https://github.com/kubernetes-sigs/descheduler/releases">
  <img src="https://img.shields.io/github/v/release/kubernetes-sigs/descheduler?label=Latest%20Version&logo=github&style=for-the-badge" />
  </a>
  <br>
  <a href="https://argo.raptor-beta.ts.net/applications/homeassistant">
  <img src="https://argo.raptor-beta.ts.net/api/badge?name=descheduler&revision=true" alt="ArgoCD Status Badge" />
</a>
</p>

> Scheduling in Kubernetes is the process of binding pending pods to nodes, and is performed by a component of Kubernetes called kube-scheduler. The scheduler's decisions, whether or where a pod can or can not be scheduled, are guided by its configurable policy which comprises of set of rules, called predicates and priorities. The scheduler's decisions are influenced by its view of a Kubernetes cluster at that point of time when a new pod appears for scheduling. As Kubernetes clusters are very dynamic and their state changes over time, there may be desire to move already running pods to some other nodes for various reasons:
>
> - Some nodes are under or over utilized.
> - The original scheduling decision does not hold true any more, as taints or labels are added to or removed from nodes, pod/node affinity requirements are not satisfied any more.
> - Some nodes failed and their pods moved to other nodes.
> - New nodes are added to clusters.
>
> Consequently, there might be several pods scheduled on less desired nodes in a cluster. Descheduler, based on its policy, finds pods that can be moved and evicts them. Please note, in current implementation, descheduler does not schedule replacement of evicted pods but relies on the default scheduler for that.
