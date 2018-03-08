#!/bin/bash

TAG=$1

if [ -z $TAG ];then
   echo -e "\nERROR: No docker build tag provided. Stopping push...\n"
   exit 1
fi

docker login --username=abvarun226

docker push abvarun226/heapster-grafana-amd64:${TAG}
