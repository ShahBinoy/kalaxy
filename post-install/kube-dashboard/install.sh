export KUBECONFIG=~/.kube/k8s-config.yaml

kubectl apply -f default-arm64.yaml

echo -e "Sleeping for 30 seconds for creation"
sleep 30

echo -e "Creating Admin User in namespace kubernetes-dashboard...\n\n"
kubectl apply -f dashboard-adminuser.yaml

echo -e "Creating rbac role for admin user..."
kubectl apply -f dashboard-rbac-role.yaml

kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep admin-user | awk '{print $1}')