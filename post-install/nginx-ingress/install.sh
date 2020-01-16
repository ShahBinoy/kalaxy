export KUBECONFIG=~/.kube/k8s-config.yaml

# helm install nginx-ingress \
#     --set rbac.create=true \
#     --set controller.image.repository="quay.io/kubernetes-ingress-controller/nginx-ingress-controller-arm64:0.26.2" \
#     --set defaultBackend.image.repository="k8s.gcr.io/defaultbackend-arm64" \
#     --namespace nginx-ingress stable/nginx-ingress 


#curl https://raw.githubusercontent.com/kubernetes/ingress-nginx/nginx-0.27.0/deploy/static/mandatory.yaml -o mandatory.yaml
kubectl apply -f mandatory.yaml

kubectl apply -f mandatory_nodeport.yaml