#!/bin/bash


oc apply -f rolebinding.yaml

oc apply -f deployer-role.yaml

kubectl patch serviceaccount build-bot -p '{"imagePullSecrets": [{"name": "quay-io-my-password"}]}'

