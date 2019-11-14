#!/usr/bin/env bash
# from here
# https://github.com/MozillaSecurity/orion/wiki/Build-ARM64-on-AMD64
USER=blacs30
NAME=prometheus-operator-arm

for container in reloader.armv7 tlsproxy.armv7 armv7; do
    docker buildx build --platform linux/arm/v7  -f Dockerfile.${container} --push -t $USER/$NAME:${container} -t $USER/$NAME:${container}-latest   .
done
