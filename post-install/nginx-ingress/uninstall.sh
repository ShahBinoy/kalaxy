export KUBECONFIG=~/.kube/k8s-config.yaml
KUBE_NS=$1

helm --namespace kube-system del nginx 
kubectl delete -f mandatory_nodeport.yaml
kubectl delete -f mandatory.yaml
