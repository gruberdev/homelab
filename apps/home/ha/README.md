## Home Assistant

<p align="center">
<img width="250" height="250" src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Home_Assistant_Logo.svg/1200px-Home_Assistant_Logo.svg.png"></br><img src="https://img.shields.io/github/v/release/home-assistant/core?label=Latest%20Version&logo=github&style=for-the-badge">
</p>

### What is Home Assistant?

> Home Assistant is an open-source home automation platform that allows you to automate and control various aspects of your home, such as lights, appliances, and security systems. It is designed to be easy to use and flexible, and it can be integrated with a wide range of devices and services, including smart home devices, smart speakers, and web services. With Home Assistant, you can create automations and rules to control your home automatically, and you can use it to monitor and track various aspects of your home, such as energy usage and temperature.

### Associated Resources

- [Postgres Operator][operator-uri]:
The Home Assistant depends on the operator to create and manage its main database.
- [ArgoCD][argo-uri]: Responsible for managing Kubernetes resources related to Home Assistant

### References and links

- **[Home Assistant Configuration Repository][own-ha-uri]**
- [Official Website][website-uri]
- [Github Repository][github-uri]
- [Awesome Home Assistant][awesome-uri]

### Instructions for standalone deployment

```bash
# Inside this folder
kubectl apply -k ./
# Using root folder as context
kubectl apply -k ./apps/home/ha
```

[own-ha-uri]: https://github.com/gruberdev/homeassistant
[website-uri]: https://www.home-assistant.io/
[github-uri]: https://github.com/home-assistant
[operator-uri]: https://github.com/gruberdev/homelab/tree/main/apps/data/postgres
[argo-uri]: https://github.com/gruberdev/homelab/tree/main/apps/argocd
[awesome-uri]: https://github.com/frenck/awesome-home-assistant
