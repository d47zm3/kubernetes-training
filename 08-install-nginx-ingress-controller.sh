#!/bin/bash

helm install --name nginx-ingress stable/nginx-ingress --set controller.hostNetwork=true,controller.service.type="",controller.kind=DaemonSet
