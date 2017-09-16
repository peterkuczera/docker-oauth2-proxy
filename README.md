# docker-oauth2-proxy

Run [oauth2_proxy](https://github.com/bitly/oauth2_proxy) in a Docker container.

## Usage

```
docker run -v path/to/config.cfg:/etc/oauth2_proxy/oauth2_proxy.cfg:ro gitlab.com registry.gitlab.com/peterkuczera/docker-oauth2-proxy/oauth2_proxy
```

See https://github.com/bitly/oauth2_proxy#command-line-options for available options.
