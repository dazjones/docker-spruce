FROM alpine:3.5

RUN apk add --update git wget && \
    wget https://github.com/geofffranks/spruce/releases/download/v1.16.2/spruce-linux-amd64 && \
    cp spruce-linux-amd64 /usr/local/bin/spruce
RUN chmod a+x /usr/local/bin/spruce && \
    rm -rf spruce-linux-amd64
