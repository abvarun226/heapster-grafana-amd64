#!/bin/bash

TAG=$1

docker login --username=abvarun226

docker push abvarun226/heapster-grafana-amd64:${TAG}
