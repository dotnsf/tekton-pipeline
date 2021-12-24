#!/bin/bash

# Create required tasks

# git-clone
oc apply -f https://raw.githubusercontent.com/tektoncd/catalog/main/task/git-clone/0.3/git-clone.yaml

# npm
oc apply -f https://raw.githubusercontent.com/tektoncd/catalog/main/task/npm/0.1/npm.yaml

# buildah
oc apply -f https://raw.githubusercontent.com/tektoncd/catalog/main/task/buildah/0.2/buildah.yaml

# kustomize
oc apply -f kustomize-build-task.yaml 

# test-deploy
oc apply -f test-deploy-task.yaml



