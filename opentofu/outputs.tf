output "kubeconfig" {
  description = "The generated kubeconfig for the Talos cluster."
  value       = talos_cluster_kubeconfig.this.kubeconfig_raw
  sensitive   = true
}

output "control_plane_ip" {
  description = "The static IP address of the control plane node."
  value       = split("/", var.STATIC_IP)[0]
}

output "talos_config" {
  description = "The generated Talos machine configuration."
  value       = data.talos_machine_configuration.controlplane.machine_configuration
  sensitive   = true
}
