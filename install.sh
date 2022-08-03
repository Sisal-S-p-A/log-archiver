#!/bin/bash

helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add skm https://charts.sagikazarmark.dev

helm install --create-namespace --namespace nginx-ingress-controller --wait --values nginx-ingress-controller.values.yaml nginx-ingress-controller bitnami/nginx-ingress-controller


NAMESPACE="log-archiver"
helm install --create-namespace --namespace "$NAMESPACE" --values ./sftpgo.values.yaml --wait "$NAMESPACE" skm/sftpgo


# helm repo add bitnami https://charts.bitnami.com/bitnami
# helm install --create-namespace -namespace nginx-ingress-controller --wait --values nginx-ingress-controller.values.yaml nginx-ingress-controller bitnami/nginx-ingress-controller
