#!/bin/bash
#

oc adm policy remove-cluster-role-from-group self-provisioner system:authenticated:oauth
oc patch clusterrolebinding.rbac self-provisioners -p '{ "metadata": { "annotations": { "rbac.authorization.kubernetes.io/autoupdate": "false" } } }'
