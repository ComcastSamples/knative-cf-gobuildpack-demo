#!/bin/sh
export HOST_FQDN=$(kubectl get route knative-cf-gobuildpack-demo --output jsonpath='{.status.domain}' -n knative-cf-gobuildpack-domain)
echo $HOST_FQDN $KNATIVE_INGRESS