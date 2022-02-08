#!/bin/bash
# docker buildx build --push . -f linux.dockerfile --platform linux/amd64 -t crweupjdev.azurecr.io/test/node-web-app:latest 
docker build . -f win.dockerfile --platform windows/amd64 -t crweupjdev.azurecr.io/test/node-web-app-win:latest