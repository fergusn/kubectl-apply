FROM alpine:3.10

COPY LICENSE README.md /

RUN wget -O /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/`wget -O- https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl && \
    chmod +x /usr/local/bin/kubectl

ENTRYPOINT ["/usr/local/bin/kubectl"]
