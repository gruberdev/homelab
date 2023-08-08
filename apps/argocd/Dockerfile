
ARG HELM_VERSION=3.12.2
ARG ALPINE_VERSION=3.18.3
ARG ARGOCD_VERSION=2.6.2
ARG VAULT_PLUGIN_VERSION=1.13.1

FROM alpine/helm:${HELM_VERSION} as helm
FROM alpine:${ALPINE_VERSION} as temp

RUN apk add --no-cache curl bash
RUN curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash && \
    mv kustomize /usr/local/bin
RUN curl -L https://github.com/argoproj-labs/argocd-vault-plugin/releases/download/v${VAULT_PLUGIN_VERSION}/argocd-vault-plugin_${VAULT_PLUGIN_VERSION}_linux_amd64 -o /tmp/argocd-vault-plugin \
    && chmod +x /tmp/argocd-vault-plugin

FROM argoproj/argocd:v${ARGOCD_VERSION}

USER root

RUN apt-get update && \
    apt-get install -y \
            curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY --from=helm /usr/bin/helm /usr/bin/helm
COPY --from=temp /usr/local/bin/kustomize /usr/bin/kustomize
COPY --from=temp /tmp/argocd-vault-plugin /usr/bin/argocd-vault-plugin

LABEL org.opencontainers.image.source = "https://github.com/gruberdev/homelab.git"

USER 999
