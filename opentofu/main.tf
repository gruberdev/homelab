# =============================================================================
# Phase 1: Declarative Hardware Control (The Day 0 Problem)
# =============================================================================

resource "redfish_boot_source_override" "pxe_once" {
  boot_source_override_target  = "Pxe"
  boot_source_override_enabled = "Once"
  system_id                    = "System.Embedded.1" # Adjust based on specific hardware model
}

resource "redfish_system_power" "power_cycle" {
  power_state = "On" # Ensure it ends up On
  # Note: The provider implementation details for "cycle" might vary. 
  # Often setting to ForceOff then On is needed if a direct cycle isn't supported 
  # or if we want to ensure the boot override is picked up from a cold start.
  # For this example, we assume applying "On" when it might be off, or managing state.
  # If a forced restart is needed:
  # reset_type = "ForceRestart" 
  
  # To strictly follow "ForceOff" then "On" logic as requested, we might need 
  # separate steps or rely on the provider's behavior when changing state.
  # Here we assume "ForceRestart" triggers the reboot needed for PXE.
  reset_type = "ForceRestart"
  
  depends_on = [redfish_boot_source_override.pxe_once]
}

# =============================================================================
# Phase 2: OS Provisioning and Configuration Injection (Day 1 Initialization)
# =============================================================================

data "talos_machine_secrets" "this" {}

data "talos_machine_configuration" "controlplane" {
  cluster_name     = "talos-cluster"
  machine_type     = "controlplane"
  cluster_endpoint = "https://${var.CLUSTER_VIP}:6443"
  machine_secrets  = data.talos_machine_secrets.this.machine_secrets
  talos_version    = var.TALOS_VERSION
  
  config_patches = [
    yamlencode({
      machine = {
        network = {
          hostname = var.NODE_NAME
          interfaces = [
            {
              interface = "eth0" # Adjust based on hardware
              dhcp      = false
              addresses = [var.STATIC_IP]
              vip = {
                ip = var.CLUSTER_VIP
              }
            }
          ]
        }
        install = {
          disk = var.INSTALL_DISK
        }
      }
    })
  ]
}

resource "matchbox_profile" "talos_install" {
  name = "talos-install-${var.NODE_NAME}"

  kernel = "https://factory.talos.dev/image/${var.TALOS_VERSION}/kernel-amd64"
  
  initrd = [
    "https://factory.talos.dev/image/${var.TALOS_VERSION}/initramfs-amd64.xz"
  ]

  args = [
    "initrd=initramfs-amd64.xz",
    "init_on_alloc=1",
    "slab_nomerge",
    "pti=on",
    "console=tty0",
    "console=ttyS0",
    "printk.devkmsg=on",
    "talos.platform=metal",
    "talos.config=${var.MATCHBOX_HTTP_ENDPOINT}/assets/talos-config-${var.NODE_NAME}.yaml"
  ]
  
  # We serve the generated config as a generic asset via Matchbox
  generic_config = data.talos_machine_configuration.controlplane.machine_configuration
}

resource "matchbox_group" "node" {
  name    = var.NODE_NAME
  profile = matchbox_profile.talos_install.name

  selector = {
    mac = var.NODE_MAC_ADDRESS
  }
}

# =============================================================================
# Phase 3: Post-Install Cluster Management (Day 1 Final / Day 2)
# =============================================================================

data "talos_client_configuration" "this" {
  cluster_name         = "talos-cluster"
  client_configuration = data.talos_machine_secrets.this.client_configuration
  nodes                = [split("/", var.STATIC_IP)[0]] # Extract IP from CIDR
}

resource "talos_machine_configuration_apply" "controlplane" {
  client_configuration        = data.talos_client_configuration.this.client_configuration
  machine_configuration_input = data.talos_machine_configuration.controlplane.machine_configuration
  node                        = split("/", var.STATIC_IP)[0]
  
  # Ensure we don't try to apply before the machine has had time to boot and install
  depends_on = [
    matchbox_group.node,
    redfish_system_power.power_cycle
  ]
}

resource "talos_machine_bootstrap" "this" {
  client_configuration = data.talos_client_configuration.this.client_configuration
  node                 = split("/", var.STATIC_IP)[0]

  depends_on = [talos_machine_configuration_apply.controlplane]
}

resource "talos_cluster_kubeconfig" "this" {
  client_configuration = data.talos_client_configuration.this.client_configuration
  node                 = split("/", var.STATIC_IP)[0]

  depends_on = [talos_machine_bootstrap.this]
}
