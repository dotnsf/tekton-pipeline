#!/bin/bash

# Edit USER and encrypted PASSWORD of quay.io
export CONTAINER_REGISTRY_SERVER='https://quay.io'
export CONTAINER_REGISTRY_USER=''
export CONTAINER_REGISTRY_PASSWORD=''
kubectl create secret -n my-tekton-pipeline-project docker-registry quay-io-my-password --docker-server=$CONTAINER_REGISTRY_SERVER --docker-username=$CONTAINER_REGISTRY_USER --docker-password=$CONTAINER_REGISTRY_PASSWORD

