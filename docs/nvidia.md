# How to setup a Nvidia GPU on `k3s`/Kubernetes

> ### An importantion observation before starting:
 > I'm only installing the drivers at the host level because I want to use that node's GPU to gaming as well, which it means the drivers have to be installed at the host level and should not conflict with the nodes workloads.
>
> However, that might not be your case, then you can install the [`Nvidia GPU Operator`][nvidia-gpu-operator] instead of using this tutorial.

---

It consists of the following steps:
1. [Verify if your GPU is compatible with CUDA][cuda-compatibility]
2. Installing the Nvidia proprietary driver on the node <sub>(At the host level)</sub>
3. [Install CUDA drivers][cuda-drivers]
4. Patching the driver so the GPU has unrestricted simultaneous NVENC video encoding sessions <sub>(If you are using a consumer-grade GPU)</sub>
5. Installing [Nvidia's container toolkit][toolkit-uri] on the node <sub> (At host level, only compatible with `containerd` and `Docker`) </sub>
6. Configuring `k3s` `containerd`, so the Nvidia container runtime may be able to interact with the low-level interface
7. Deploying [gpu-feature-discovery][gfd-uri] along [node-feature-discovery][nfd-uri] to your cluster
8. Create a runtime class resource on the cluster
9. Deploying [k8s-device-plugin][nvidia-driver-repo] chart as well
10. Testing the setup with a pod that utilizes the new Nvidia runtime and runs a CUDA benchmark.

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

- So in the end it should look something like this:
```sh
version = 2

[plugins."io.containerd.internal.v1.opt"]
  path = "/var/lib/rancher/k3s/agent/containerd"

[plugins."io.containerd.grpc.v1.cri"]
  stream_server_address = "127.0.0.1"
  stream_server_port = "10010"
  enable_selinux = false
  enable_unprivileged_ports = true
  enable_unprivileged_icmp = true
  sandbox_image = "rancher/mirrored-pause:3.6"

[plugins."io.containerd.grpc.v1.cri".containerd]
  default_runtime_name = "nvidia"
  snapshotter = "overlayfs"
  disable_snapshot_annotations = true

[plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc]
  runtime_type = "io.containerd.runc.v2"

[plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc.options]
  SystemdCgroup = true

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

Both Helm charts are required to properly label nodes that have a GPU attached to them. Although `k8s-device-plugin` allows you to deploy ` gpu-feature-discovery`  as part of their resources, I decided to split them. You can find my Helm chart `values.yaml`  equivalent file for ArgoCD here:

- [apps/argocd/base/utilities/gfd.yaml][gfd-uri]


It is recommended to read all the individual respositories, their default ` values.yaml` for the Helm deployments, and what each value should be changed to match your infrastructure. 

If you need an example, feel free to use mine as a reference to change yours.

## Create a runtime class resource

Apply the following yaml to your cluster:
```yaml
apiVersion: node.k8s.io/v1
kind: RuntimeClass
metadata:
  name: nvidia
handler: nvidia
```

## Deploying `k8s-device-plugin`

There a few caveats to this deployment in specific.
### Common issues

- "It won't start properly, the container logs read:
 "`Error: failed to create FS watcher: too many open files.`"

The solution is to increase the value of limit imposed on the user of `inotify.max_user_instances`. To check your system values, you can type the following:
```sh
cat /proc/sys/fs/inotify/max_user_instances
cat /proc/sys/fs/inotify/max_user_watches
```

And to increase the value on systems that have a `/etc/sysctl.d` folder:
```sh
echo 'fs.inotify.max_user_watches = 524288' | sudo tee -a /etc/sysctl.d/99-nvidia.conf
echo 'fs.inotify.max_user_instances = 8192' | sudo tee -a /etc/sysctl.d/99-nvidia.conf
sudo sysctl -p /etc/sysctl.d/99-nvidia.conf
```
Or in systems that don't have it:
```sh
echo 'fs.inotify.max_user_watches = 524288' | sudo tee -a /etc/sysctl.conf
echo 'fs.inotify.max_user_instances = 8192' | sudo tee -a /etc/sysctl.conf
sudo sysctl -p /etc/sysctl.conf
```
The values in those two lines should be higher than those found initially on each of the `inotify` file on your system.

## Testing your cluster's GPU deployment

```
apiVersion: v1
kind: Pod
metadata:
  name: gpu-operator-test
spec:
  runtimeClassName: nvidia
  restartPolicy: OnFailure
  containers:
  - name: cuda-vector-add
    image: "nvidia/samples:vectoradd-cuda10.2"
    resources:
      limits:
         nvidia.com/gpu: 1
```

The output should be:
```bash
[Vector addition of 50000 elements]
Copy input data from the host memory to the CUDA device
CUDA kernel launch with 196 blocks of 256 threads
Copy output data from the CUDA device to the host memory
Test PASSED
Done
```

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
[nvidia-gpu-operator]: https://docs.nvidia.com/datacenter/cloud-native/gpu-operator/overview.html
[gfd-uri]: https://github.com/gruberdev/homelab/blob/main/apps/argocd/base/utilities/gfd.yaml
