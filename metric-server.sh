helm install --name metrics-server stable/metrics-server
#
#      containers:
#      - command:
#        - /metrics-server
#        - --cert-dir=/tmp
#        - --logtostderr
#        - --secure-port=8443
#        - --kubelet-insecure-tls <= add this
