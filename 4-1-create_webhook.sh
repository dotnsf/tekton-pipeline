#!/bin/bash


# Register your source into Github repository

# Copy k8s/ folder into above sourece repository

oc apply -f webhook.yaml

# Register webhook with a result of `$ oc get route`



