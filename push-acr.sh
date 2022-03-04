#!/bin/bash
az acr login --name $1
docker push $1.azurecr.io/test/node-web-app
docker push $1.azurecr.io/test/node-web-app-win