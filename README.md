# Azure cli and Powershell core docker image

## Docker Hub

<https://hub.docker.com/r/vinhomn/az-cli-ps>

## How to use

Go to the directory path you want to work with, and run this command:

``docker run --rm -it -v ${PWD}:/work -w /work vinhomn/az-cli-ps:latest``

## Changelog

### 0.0.3

- Update to use powershell-core image 7.0.1-alpine-3.10
- Update az-cli 2.6.0
- Add az-powershell 4.1.0
