FROM alpine:3.8

WORKDIR /opt/issue-sync

RUN apk update --no-cache && apk add ca-certificates

COPY bin/issue-sync /opt/issue-sync/issue-sync

ENTRYPOINT ["./issue-sync"]

CMD ["--config", "config.json"]
