#!/bin/bash

kubectl run php-apache --image=k8s.gcr.io/hpa-example --requests=cpu=200m --limits=cpu=500m --expose --port=80
kubectl autoscale deployment php-apache --cpu-percent=50 --min=1 --max=10
kubectl run --generator=run-pod/v1 -it --rm load-generator --image=busybox /bin/sh

# while true; do wget -q -O- http://php-apache.default.svc.cluster.local; done
