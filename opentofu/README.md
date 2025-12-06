# OpenTofu Bare Metal Talos Deployment

This directory contains the OpenTofu (Terraform) configuration to provision a bare metal Talos Linux Kubernetes cluster.

## Architecture

### Flowchart: Declarative Infrastructure Pipeline

```mermaid
graph TD
    A[Start: OpenTofu apply] --> B(Phase 1: Hardware Control - Redfish Provider);
    B --> C{Set PXE Boot Override "Once"};
    C --> D{Execute Power Cycle};
    D --> E(Hardware Reboots);
    E --> F{Phase 2: OS Provisioning - Matchbox Server};
    F --> G[Matchbox Serves Talos Kernel + talos.config=URL via MAC Match];
    G --> H(Hardware Installs Talos OS to Disk);
    H --> I(Hardware Reboots from Disk);
    I --> J(Phase 3: Cluster Management - Talos Provider);
    J --> K{Apply Final Configuration State};
    K --> L{Bootstrap Kubernetes Control Plane - ONCE};
    L --> M[End: Kubeconfig Ready / Self-Managed];
```

### Sequence Diagram: OpenTofu Orchestration Chain

```mermaid
sequenceDiagram
    participant U as User/Agent
    participant OT as OpenTofu (IaC Engine)
    participant R as Redfish (BMC)
    participant M as Matchbox (PXE/HTTP Server)
    participant H as Hardware Node (Talos OS)

    U->>OT: 1. tofu apply (Start Deployment)
    OT->>R: 2. Set Boot Override: PXE, Once
    OT->>R: 3. Power Cycle (Off then On)
    R->>H: 4. Initiate Network Boot (PXE)

    H->>M: 5. Request Boot Assets (via MAC/UUID)
    M-->>H: 6. Deliver Talos Kernel + initrd + talos.config=URL (Phase 2 Injection)
    H->>H: 7. Execute Talos Installation to Disk (using MC from URL)
    H->>H: 8. Reboot (Boot from Local Disk)

    OT->>H: 9. Check Talos API Connectivity (Phase 3)
    OT->>H: 10. talos_machine_configuration_apply (Reconcile Config)
    OT->>H: 11. talos_machine_bootstrap (Run ONCE)
    H-->>OT: 12. Bootstrap Complete
    OT->>H: 13. talos_cluster_kubeconfig (Retrieve Kubeconfig)
    H-->>OT: 14. Return Kubeconfig Data
    OT-->>U: 15. Deployment Complete
```

## Reference URLs

- [Matchbox Documentation](https://matchbox.psdn.io/)
- [OpenTofu Documentation](https://opentofu.org/docs/)
- [Talos Linux Documentation](https://www.talos.dev/)
- [Terraform Matchbox Provider](https://registry.terraform.io/providers/poseidon/matchbox/latest/docs)
- [Terraform Redfish Provider](https://registry.terraform.io/providers/dell/redfish/latest/docs)
- [Terraform Talos Provider](https://registry.terraform.io/providers/siderolabs/talos/latest/docs)
