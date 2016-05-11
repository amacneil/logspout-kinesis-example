#!/bin/sh -ex
docker build -t example/logspout .
docker run --rm \
  -e LOGSPOUT=ignore \
  --name=logspout \
  --volume=/var/run/docker.sock:/var/run/docker.sock \
  example/logspout \
  kinesis://
