<p align="center">
  <img width="450" height="200" src="https://raw.githubusercontent.com/gruberdev/homelab/main/docs/assets/logos/onchange.svg" />
  <br />
  <img src="https://img.shields.io/docker/v/dgtlmoon/changedetection.io?label=Latest%20Semver&color=blue&logo=docker&sort=semver&style=for-the-badge" />
</p>

### Description

> **changedetection.io** is a self-hosted service for monitoring changes to web pages. Built on Python and Flask, it uses headless browsing to capture snapshots of specified URLs at regular intervals. The service compares these snapshots to detect any changes and notifies users via various channels like email or webhooks. It's designed to be lightweight, running in a Docker container, making it ideal for homelab setups.

&nbsp;

### Relevant Links

- [Website][website-uri]
- [Official Wiki][docs-uri]
- [Github Repository][repo-uri]

### Instructions for deployment

```bash
kubectl apply -k github.com/gruberdev/homelab/apps/services/changedetection
```

[website-uri]: https://changedetection.io/
[docs-uri]: https://github.com/dgtlmoon/changedetection.io/wiki
[repo-uri]: https://github.com/dgtlmoon/changedetection.io
