<p align="center">
<img width="150" height="150" src="../../../docs/assets/logos/nitter.svg"/><br></br>
</p>

### Description
> Nitter is a free and open-source alternative Twitter front-end focused on privacy and performance. It prevents Twitter from tracking your IP or JavaScript fingerprint by ensuring that all requests go through the backend, and the client never talks directly to Twitter. Furthermore, Nitter is on average around 15 times lighter than Twitter and serves pages faster. It uses Twitter's unofficial API, so no developer account or rate limits are required.

- [Repository][website-uri]
- [Official Wiki][docs-uri]
- [Alternative Frontends Github List][alternative-uri]


### Instructions for individual deployment

```bash
kubectl apply -k apps/services/nitter
```

[website-uri]: https://github.com/zedeus/nitter
[docs-uri]: https://github.com/zedeus/nitter/wiki
[alternative-uri]: https://github.com/mendel5/alternative-front-ends
