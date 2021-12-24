#!/bin/bash
kubectl create sa build-bot
kubectl patch serviceaccount build-bot -p '{"secrets": [{"name": "quay-io-my-password"}]}'
kubectl get sa -n my-tekton-pipeline-project build-bot -o yaml
oc policy add-role-to-user cluster-admin -z build-bot


