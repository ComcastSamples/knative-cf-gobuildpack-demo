#!/bin/sh

echo "############ BUILD TEMPLATES - Cloud foundry GO-BUILDPACK DEMO ##############"

kubectl create ns knative-cf-gobuildpack-domain
kubectl apply -f https://raw.githubusercontent.com/knative/build-templates/master/buildpacks/cf.yaml -n knative-cf-gobuildpack-domain
kubectl apply -f secret.yml
kubectl apply -f sa-build-bot.yml
kubectl apply -f service.yml