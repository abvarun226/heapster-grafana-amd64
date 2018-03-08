#!/bin/bash

TAG=$1

docker login --username=abvarun226

cp -r /etc/ssl/certs .

docker build -t abvarun226/heapster-grafana-amd64:${TAG} .

rm -r certs
