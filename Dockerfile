FROM golang:1.21-alpine

RUN go install golang.org/x/tools/cmd/deadcode@latest

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
