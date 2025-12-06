# Manual and Physical Steps Documentation

This document outlines the physical and manual prerequisites required before running the OpenTofu automation.

## 1. Physical Hardware Requirements
- **Server**: Ensure the bare metal server is racked and cabled.
- **Power**: Connect both power supplies (if applicable) to PDU.
- **Network**:
    - Connect the BMC/IPMI port to the management network.
    - Connect the primary network interface (e.g., `eth0` or first NIC) to the data network.
    - Ensure the MAC address of the primary interface is recorded (`NODE_MAC_ADDRESS`).

## 2. BIOS / BMC Initial Configuration
Before OpenTofu can interact with the server via Redfish:
- **IP Assignment**: Configure the BMC IP address (static or DHCP reservation). This must match `BMC_ENDPOINT`.
- **User Creation**: Create a dedicated automation user on the BMC with administrative privileges.
    - Username: `BMC_USERNAME`
    - Password: `BMC_PASSWORD`
- **Redfish Enablement**: Ensure the Redfish API is enabled in the BMC settings.
- **Boot Order**: While OpenTofu sets the boot override, ensuring Network/PXE is in the boot list is recommended.

## 3. Network Prerequisites
- **DHCP**: A DHCP server must be active on the data network to provide an IP to the node during PXE boot.
- **DNS**: DNS resolution should be working for the node to resolve external URLs (if downloading images from the internet) or internal Matchbox endpoints.
- **Firewall**: Ensure traffic is allowed between:
    - OpenTofu runner -> BMC (HTTPS/Redfish)
    - OpenTofu runner -> Matchbox (gRPC)
    - OpenTofu runner -> Talos Node (API port 50000, 6443)
    - Talos Node -> Matchbox (HTTP port 8080)

## 4. Post-Deployment Verification
After `tofu apply` completes:
- **LED Check**: Verify the physical server power LED is on.
- **Console Access**: (Optional) Connect via KVM/SOL to watch the boot process if debugging is needed.
- **Talos Dashboard**: Run `talosctl dashboard` pointing to the new node to verify health.
- **Kubernetes Access**: Use the generated kubeconfig to run `kubectl get nodes` and verify the node is `Ready`.
