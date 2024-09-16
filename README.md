# k8s-http-tunnel

Kubernetes http tunnel allows accessing tcp services from outside the cluster using http protocol transparently for client and server.

## Technical problem that solves

A rabbitmq is in a kubernetes cluster with public ingress enabled but needs to be accessed by a microservice that is outside the cluster.

microservice in k8s 1 -> rabbitmq in k8s 2

Solution:

microservice -> haproxy -> httptunnel --internet--> ingress controller -> httptunnel -> haproxy -> rabbitmq

The chart is deployed in client mode or in server mode using the same values.

## Container image

```
docker build . -t jmferrer/http-tunnel
```

## Helm chart

Depends on [haproxy helm chart](https://artifacthub.io/packages/helm/haproxytech/haproxy).


