#!/bin/bash

sudo sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b ~/.local/bin
wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash && sudo mv kustomize /usr/local/bin
