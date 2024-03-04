#!/bin/bash

# minikube stop
# minikube delete
# minikube start

rm -rf mise/k8s/konvert/*.yaml
# kompose convert -f docker-compose.prod.yml -o mise/k8s/konvert
# cp -r mise/k8s/konvert/app-service.yaml.tt mise/k8s/konvert/app-service.yaml
cp -r mise/k8s/konvert/app-deployment.yaml.tt mise/k8s/konvert/app-deployment.yaml
# cp -r mise/k8s/konvert/sidekiq-deployment.yaml.tt mise/k8s/konvert/sidekiq-deployment.yaml
# cp -r mise/k8s/konvert/app-statefulset.yaml.tt mise/k8s/konvert/app-statefulset.yaml


kubectl apply -f mise/k8s/konvert
kubectl get svc
kubectl get pods --watch

