#!/bin/bash

helm repo add skm https://charts.sagikazarmark.dev

NAMESPACE="log-archiver"

helm install --create-namespace --namespace "$NAMESPACE" --values ./sftpgo.values.yaml --wait "$NAMESPACE" skm/sftpgo
