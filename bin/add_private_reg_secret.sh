# 1. login to your private docker registry first 
# https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/
#
# docker login <your registry>

# 2. then run the 
kubectl create secret generic regcred \
    --from-file=.dockerconfigjson=$HOME/.docker/config.json \
    --type=kubernetes.io/dockerconfigjson

#kubectl delete secret regcred

# 3. copy regred to another namespace
#kubectl get secret regcred --namespace=default -o yaml | sed "s/default/dsstack/" | kubectl apply --namespace=dsstack -f -
