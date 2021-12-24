#!/bin/bash


oc apply -f tekton-triggers-sa.yaml

oc policy add-role-to-user cluster-admin -z tekton-triggers-sa

oc apply -f tekton-triggers-role.yaml

oc apply -f tekton-triggertemplate.yaml

oc apply -f akpfs-triggerbinding.yaml

oc apply -f akpfs-eventlistener.yaml

oc apply -f akpfs-route.yaml


