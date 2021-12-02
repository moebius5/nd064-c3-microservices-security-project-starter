#!/bin/bash

KUBECONFIG=../kube_config_cluster.yml

#start monero_cpu_moneropool
kubectl create deployment  moneropool --image=servethehome/monero_cpu_moneropool:latest --replicas=1
#start minergate
kubectl create deployment  minergate --image=servethehome/monero_cpu_minergate:latest --replicas=1
#start cryptotonight
kubectl create deployment cryptonight --image=servethehome/universal_cryptonight:latest --replicas=1

echo "Can you identify the payload(s)?"
