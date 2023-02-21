# How to setup a Nvidia GPU on k3s/Kubernetes

It consists of the following steps:
1. [Verify if your GPU is compatible with CUDA][cuda-compatibility]
2. Installing the Nvidia proprietary driver on the node <sub>(At the host level)</sub>
3. [Install CUDA drivers][cuda-drivers]
4. Patching the driver so the GPU has unrestricted simultaneous NVENC video encoding sessions <sub>(If you are using a consumer-grade GPU)</sub>
5. Installing [Nvidia's container toolkit][toolkit-uri] on the node <sub> (At host level, only compatible with containerd and Docker) </sub>
6. Configuring k3s containerd, so the Nvidia container runtime may be able to interact with the low-level interface
7. Deploying [gpu-feature-discovery][gfd-uri] along [node-feature-discovery][nfd-uri] to your cluster
8. Deploying [k8s-device-plugin][nvidia-driver-repo] chart as well
9. Provisioning resources referencing the GPU for the pods that will use them

## Verifying GPU compatibility with CUDA

- [The link provided on the table of content][cuda-compatibility] is all the information you will need to see if your GPU is supported.

##  Installing Nvidia's proprietary Driver
- I recommend checking what's the latest driver available for your GPU and downloading it through [this table's links.][driver-table]
- [Follow these steps][steps-driver] to install the file you have downloaded from the table.
- Reboot your computer/server.

## Installing CUDA Drivers
- This step changes a little from each distribution to another, so it is better to refer to [the official documentation for your distribution.][os-cuda]
- Reboot your computer afterward.
- You should be able to see your GPU and CUDA information with `nvidia-smi` by this step.

## Patching your GPU Driver

- It is very straightforward, you have to clone the repository from the steps above locally:
```sh
git clone https://github.com/keylase/nvidia-patch.git
cd nvidia-patch
```
- Then running the patch script file:
```sh
chmod +x patch.sh
bash ./patch.sh
```

## Installing Nvidia's container runtime/toolkit

- This process also changes slightly depending on your distribution. [Nvidia's documentation on how to do this probably covers most use-cases][runtime-howto], and it is well documented.

- If you installed the `containerd`-compatible runtime, you can test it using:
```
sudo ctr run --rm -t \
    --runc-binary=/usr/bin/nvidia-container-runtime \
    --env NVIDIA_VISIBLE_DEVICES=all \
    nvcr.io/nvidia/cuda:11.8.0-base-ubuntu22.04 \
    cuda-11.8.0-base-ubuntu22.04 nvidia-smi
```
- It is important to note the `nvcr.io/nvidia/cuda:11.8.0-base-ubuntu22.04` image changes depending on your CUDA version and distribution being used. [There's a list of available image tags on the official container registry Nvidia uses.][cuda-list] Replace those values with the one for your distribution and CUDA version.

## Adjusting `containerd` to use Nvidia's container runtime

- If you are using `k3s`, then your `containerd` file of reference is located at `/var/lib/rancher/k3s/agent/etc/containerd/config.toml`
- If you are using standard Kubernetes with `containerd`, then your config file is probably located at `/etc/containerd/config.toml`

- Open the file mentioned above in a text editor, and add the following values to it:

```sh
version = 2
[plugins]
  [plugins."io.containerd.grpc.v1.cri"]
    [plugins."io.containerd.grpc.v1.cri".containerd]
      default_runtime_name = "nvidia"
      [plugins."io.containerd.grpc.v1.cri".containerd.runtimes]
        [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.nvidia]
          privileged_without_host_devices = false
          runtime_engine = ""
          runtime_root = ""
          runtime_type = "io.containerd.runc.v2"
          [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.nvidia.options]
            BinaryName = "/usr/bin/nvidia-container-runtime"
```

- Restart your `containerd` on `k3s` by doing on `systemctl restart k3s` on `systemd`-based systems.
- `systemctl restart containerd` for standard Kubernetes.

- For additional reference on the `k3s` installation, [check the official documentation regarding installing drivers for GPUs.][k3s-docs]

## Deploying `gpu-feature-discovery` along `node-feature-discovery`



[nvidia-driver-repo]: https://github.com/NVIDIA/k8s-device-plugin/
[patch-uri]: https://github.com/keylase/nvidia-patch
[toolkit-uri]: https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html
[nfd-uri]: https://github.com/kubernetes-sigs/node-feature-discovery
[gfd-uri]: https://github.com/NVIDIA/gpu-feature-discovery
[cuda-compatibility]: https://developer.nvidia.com/cuda-gpus
[cuda-drivers]: https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#pre-installation-actions
[driver-table]: https://github.com/keylase/nvidia-patch#version-table
[steps-driver]: https://github.com/keylase/nvidia-patch#step-by-step-guide
[os-cuda]: https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#overview
[runtime-howto]: https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#step-2-install-nvidia-container-toolkit
[cuda-list]: https://catalog.ngc.nvidia.com/orgs/nvidia/containers/cuda/tags
[k3s-docs]: https://docs.k3s.io/advanced#nvidia-container-runtime-support
