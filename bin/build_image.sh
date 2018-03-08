#!/bin/bash

TAG=$1

if [ -z $TAG ];then
   echo -e "\nERROR: No docker build tag provided. Stopping build...\n"
   exit 1
fi

docker login --username=abvarun226

cp -r /etc/ssl/certs .

docker build -t abvarun226/heapster-grafana-amd64:${TAG} .

rm -r certs
