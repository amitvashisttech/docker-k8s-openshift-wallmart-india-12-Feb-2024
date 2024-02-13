```
 232  mkdir 04-Replication-Cantroller
  233  cd 04-Replication-Cantroller/
  234  vim helloworld-rc.yaml
  235  ls
  236  kubectl apply -f helloworld-rc.yaml
  237  cat helloworld-rc.yaml
  238  kubectl get rc
  239  kubectl describe rc helloworld-controller
  240  kubectl delete pod helloworld-controller-x569j helloworld-controller-d8mjc
  241  kubectl describe rc helloworld-controller
  242  kubectl get rc
  243  kubectl scale replicas=1 rc helloworld-controller
  244  kubectl scale --replicas=1 rc helloworld-controller
  245  kubectl get rc
  246  kubectl delete pod helloworld-controller-n9n8k
  247  kubectl scale --replicas=5 rc helloworld-controller
  248  kubectl delete pod hello-k8s-2
  249  ls
  250  cat helloworld-rc.yaml
  251  kubectl apply -f helloworld-rc.yaml
  252  kubectl delete -f helloworld-rc.yaml

```


```
 watch -n .5 kubectl get pods -o wide
```


Note Point : In Case you are getting imagepull error stating that you have reached to max limit of downloads, then apply the following solution. 

# Docker login
```
docker login
ls /root/.docker/config.json
```

# Create a Secret in K8s for Docker Registry
```
kubectl create secret generic regcred --from-file=.dockerconfigjson=/root/.docker/config.json --type=kubernetes.io/dockerconfigjson

kubectl get secrets
```

## Update the Pull Defination in Yaml File 
```
      imagePullSecrets:
      - name: regcred
```

## Now deploy helloworld Repication Cantroller:
```
kubectl apply -f helloworld-rc.yaml
```
     
