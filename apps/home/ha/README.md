## Home Assistant

<p align="center">
  <img width="250" height="250" src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Home_Assistant_Logo.svg/1200px-Home_Assistant_Logo.svg.png" />
  <br />
  <img src="https://img.shields.io/github/v/release/home-assistant/core?label=Latest%20Version&logo=github&style=for-the-badge" />
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
kubectl apply -k github.com/gruberdev/homelab/apps/home/ha
```

### HACS Integrations

- [SmartIR][smartir-uri]
- [Uptime-kuma Integration][uptime-kuma]
- [icloud3][icloud3-uri]
- [ha-floorplan][ha-floorplan]
- [ha-samsungtv-smart][ha-samsungtv-smart]
- [scheduler-component][scheduler-component]
- [ha-dual-smart-thermostat][ha-dual-smart-thermostat]
- [hass-openai-custom-conversation][hass-openai-custom-conversation]
- [iphonedetect][iphonedetect]
- [extended_openai_conversation][extended-ai]

### Lovelace add-ons:

- [vertical-stack-in-card][vertical-stack-uri]
- [mini-graph-card][mini-graph-uri]
- [battery-state-card][battery-uri]
- [history-explorer-card][history-card]
- [lovelace-home-feed-card][lovelace-home-feed-card]
- [scheduler-card][scheduler-card]
- [lovelace-qr-code-card][lovelace-qr-code-card]
- [hass-swipe-navigation][hass-swipe-navigation]
- [lovelace-card-mod][lovelace-card-mod]
- [multiple-entity-row][multiple-entity-row]
- [decluttering-card][decluttering-card]
- [energy-entity-row][energy-entity-row]
- [layout-card][layout-card]

### General personal documentation

- [How I fixed my Samsung TV (Tizen) asking for permission all whenever it was switched off when using the Home Assistant integration][ha-samsung-uri]
- [Custom keys for an improved tv-card coupled with my IR controller (Broadlink RM4 Pro)][broadlink-custom-uri]

[own-ha-uri]: https://github.com/gruberdev/homeassistant
[website-uri]: https://www.home-assistant.io/
[github-uri]: https://github.com/home-assistant
[operator-uri]: https://github.com/gruberdev/homelab/tree/main/apps/data/postgres
[argo-uri]: https://github.com/gruberdev/homelab/tree/main/apps/argocd
[awesome-uri]: https://github.com/frenck/awesome-home-assistant

[smartir-uri]: https://github.com/smartHomeHub/SmartIR
[uptime-kuma]: https://github.com/meichthys/uptime_kuma
[icloud3-uri]: https://github.com/gcobb321/icloud3
[ha-floorplan]: https://github.com/ExperienceLovelace/ha-floorplan
[ha-samsungtv-smart]: https://github.com/ollo69/ha-samsungtv-smart
[scheduler-component]: https://github.com/nielsfaber/scheduler-component
[ha-dual-smart-thermostat]: https://github.com/swingerman/ha-dual-smart-thermostat
[hass-openai-custom-conversation]: https://github.com/drndos/hass-openai-custom-conversation
[iphonedetect]: https://github.com/mudape/iphonedetect
[extended-ai]: https://github.com/jekalmin/extended_openai_conversation

[vertical-stack-uri]: https://github.com/ofekashery/vertical-stack-in-card
[mini-graph-uri]: https://github.com/kalkih/mini-graph-card
[battery-uri]: https://github.com/maxwroc/battery-state-card
[history-card]: https://github.com/alexarch21/history-explorer-card
[lovelace-home-feed-card]: https://github.com/gadgetchnnel/lovelace-home-feed-card
[scheduler-card]: https://github.com/nielsfaber/scheduler-card
[lovelace-qr-code-card]: https://github.com/igor-panteleev/lovelace-qr-code-card
[hass-swipe-navigation]: https://github.com/zanna-37/hass-swipe-navigation
[lovelace-card-mod]: https://github.com/thomasloven/lovelace-card-mod
[multiple-entity-row]: https://github.com/benct/lovelace-multiple-entity-row
[decluttering-card]: https://github.com/custom-cards/decluttering-card
[energy-entity-row]: https://github.com/zeronounours/lovelace-energy-entity-row
[layout-card]: https://github.com/thomasloven/lovelace-layout-card

[ha-samsung-uri]: https://github.com/home-assistant/core/issues/70777
[broadlink-custom-uri]: https://github.com/usernein/tv-card/blob/c8f0a76424844772934613d45691d9b3860ff36b/README.md?plain=1#L88-L130