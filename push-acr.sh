#!/bin/bash
az acr login --name crweupjdev
docker push crweupjdev.azurecr.io/test/node-web-app
docker push crweupjdev.azurecr.io/test/node-web-app-win