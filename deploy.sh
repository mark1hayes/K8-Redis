#! /bin/bash

kubectl create -f redis-master-deployment.yaml
kubectl get pods -o wide
kubectl create -f redis-master-service.yaml
kubectl get service 
kubectl describe service redis-master
kubectl get endpoints --selector app=redis,role=master
kubectl create -f redis-slave-deployment.yaml
kubectl get pods 
kubectl create -f redis-slave-service.yaml
kubectl get service 
kubectl create -f gb-frontend-deployment.yaml
kubectl get pods --selector app=guestbook,tier=frontend 
kubectl create -f gb-frontend-service.yaml
kubectl get service gb-frontend-service -o wide
  
