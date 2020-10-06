# 1. login to your private docker registry first 
# https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/
#
# docker login <your registry>

# 2. then run the 
kubectl create secret generic regcred \
    --from-file=.dockerconfigjson=$HOME/.docker/config.json \
    --type=kubernetes.io/dockerconfigjson

#kubectl delete secret regcred

