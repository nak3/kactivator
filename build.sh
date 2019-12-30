#!/bin/bash
set -e
env CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o kactivator cmd/main.go
docker build . -t quay.io/nak3/kactivator-adapter
docker push quay.io/nak3/kactivator-adapter
