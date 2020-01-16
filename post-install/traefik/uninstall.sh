export KUBECONFIG=~/.kube/k8s-config.yaml
KUBE_NS=$1

helm del traefik --namespace kube-system