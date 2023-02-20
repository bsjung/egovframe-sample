#!/bin/sh

kubectl delete -f deploy-egov.yaml -n dev
kubectl apply -f deploy-egov.yaml -n dev
