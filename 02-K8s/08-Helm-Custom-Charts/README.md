```
 370  mkdir 08-Helm-Custom-Charts
  371  ls
  372  cd 08-Helm-Custom-Charts/
  373  ls
  374  helm  create mywebapp
  375  ls
  376  apt-get install tree -y
  377  ls
  378  tree .
  379  cd mywebapp/
  380  ls
  381  cat Chart.yaml
  382  ls
  383  cat templates/service
  384  cat templates/service.yaml
  385  ls
  386  vim values.yaml
  387  sl
  388  ls
  389  cd ..
  390  ls
  391  helm install my-web mywebapp --dry-run
  392  helm install my-web mywebapp
  393  helm list
  394  kubectl get deploy,pod,svc
  395  ls
  396  helm list
  397  helm history my-web
  398  vim mywebapp/Chart.yaml
  399  ls
  400  vim mywebapp/values.yaml
  401  kubectl get deploy,pod,svc
  402  vim mywebapp/values.yaml
  403  ls
  404  kubectl  edit svc /my-web-mywebapp
  405  kubectl  edit svc my-web-mywebapp
  406  kubectl get deploy,pod,svc
  407  helm list
  408  helm history my-web
  409  helm upgrade my-web mywebapp/
  410  helm history my-web
  411  kubectl get deploy,pod,svc
  412  helm history my-web
  413  helm rollback my-web
  414  helm history my-web
  415  kubectl get deploy,pod,svc
  416  kubectl  edit svc my-web-mywebapp
  417  kubectl get deploy,pod,svc
```
