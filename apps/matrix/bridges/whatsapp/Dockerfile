FROM dock.mau.dev/mautrix/whatsapp:v0.7.1
RUN curl -L https://github.com/a8m/envsubst/releases/download/v1.2.0/envsubst-`uname -s`-`uname -m` -o envsubst \
    && chmod +x envsubst \
    && mv envsubst /usr/local/bin
