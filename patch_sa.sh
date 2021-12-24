#!/bin/bash
kubectl patch serviceaccount build-bot -p '{"imagePullSecrets": [{"name": "quay-io-kei-kimura-password"}]}'
