FROM alpine:3.6

RUN apk update && \
    apk add openssl ca-certificates && \
    wget https://github.com/bitly/oauth2_proxy/releases/download/v2.2/oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz && \
    tar xzf oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz && \
    mv oauth2_proxy-2.2.0.linux-amd64.go1.8.1/oauth2_proxy /usr/local/bin/ && \
    rm -r oauth2_proxy-2.2.0.linux-amd64.go1.8.1* && \
    rm /var/cache/apk/* && \
    mkdir /etc/oauth2_proxy

CMD /usr/local/bin/oauth2_proxy -config /etc/oauth2_proxy/oauth2_proxy.cfg
