<p align="center">
  <img width="370" height="120" src="https://upload.wikimedia.org/wikipedia/commons/4/4d/Tailscale-Logo-Black.svg" />
  <br />
  <img src="https://img.shields.io/github/v/release/tailscale/tailscale?label=Latest%20Version&logo=github&style=for-the-badge" />
  <br>
  <a href="https://argo.raptor-beta.ts.net/applications/tailscale-operator">
  <img src="https://argo.raptor-beta.ts.net/api/badge?name=tailscale-operator&revision=true" alt="ArgoCD Status Badge" />
</a>
</p>

### Description
>
> Tailscale is a secure and easy-to-use VPN for teams and individuals. It creates a private network between your devices, no matter where they are, and encrypts all traffic to keep your online activities private and secure.
>
> It provides a simple and intuitive user interface that allows you to easily manage and control your network, and it integrates seamlessly with your existing infrastructure and tools.

### Reasons I chose Tailscale over other VPN solutions
>
> - Tailscale is designed to be easy to use and set up, with no complicated configuration or management required. This applies to both controller, client applications and the Kubernetes operator.
> - [It provides a way to configure ACL policy through infrastructure-as-code][acl-uri], allowing the network administrator to control how the nodes communicate between themselves through detailed instructions.
> - Tailscale uses [Wireguard][awesome-uri], an industry-standard VPN protocol that is more lightweight than OpenVPN and at the same time allows for full encrypted communication between the network nodes.
> - [It is cheaper than Inlets Pro (even for perosnal use)][inlets-uri], [has a similar speed to ZeroTier <sup>(Benchmark link)</sup>][zero-uri] and provides more SaaS experience than [Headscale][headscale-uri], for now.
> - It is mostly open source, the only part that had proprietary code (the controller) was recently reverse-engineered through [the Headscale project][headscale-uri], which tags along Tailscale's evolving features.

### Additional resources

- [Website][website-uri]
- [Official Documentation][docs-uri]
- [Tailscale *Policy as code* for this repository][acl-uri]
- [Kubernetes Operator documentation][operator-docs-uri]
- [Awesome Wireguard list of resources][awesome-uri]
- [Administrator login interface for Tailscale][admin-uri]

[website-uri]: https://tailscale.com/
[docs-uri]: https://tailscale.com/kb/
[awesome-uri]: https://github.com/cedrickchee/awesome-wireguard
[operator-docs-uri]: https://tailscale.com/kb/1236/kubernetes-operator/
[admin-uri]: https://login.tailscale.com/admin/machines
[acl-uri]: https://github.com/gruberdev/homelab/blob/main/policy.hujson
[inlets-uri]: https://inlets.dev/pricing/
[zero-uri]: https://medium.com/netmaker/battle-of-the-vpns-which-one-is-fastest-speed-test-21ddc9cd50db
[headscale-uri]: https://github.com/juanfont/headscale
