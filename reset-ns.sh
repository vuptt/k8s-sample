#!/usr/bin/env bash

kubectl delete namespace anhti
kubectl create namespace anhti
kubectl config set-context --current --namespace=anhti
