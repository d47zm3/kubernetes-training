#!/bin/bash

curl -L https://git.io/get_helm.sh | bash
kubectl apply -f 07-tiller-config.yaml
helm init --service-account tiller --history-max 200
