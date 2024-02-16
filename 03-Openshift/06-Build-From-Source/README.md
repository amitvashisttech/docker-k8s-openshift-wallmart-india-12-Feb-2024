# Building from source code

A source build and deployment can be run direct from this repository.

### 1. To build and deploy the sample application from the command line, you can run:

```
oc new-app python:latest~https://github.com/openshift-katacoda/blog-django-py --name blog-from-source-py
oc expose svc/blog-from-source-py
```

Note that you need to provide the S2I builder name of ``python:latest`` if you are not explicitly telling ``oc new-app`` that the source build strategy should be used. This is because the repository also contains a ``Dockerfile`` and automatic detection performed by ``oc new-app`` would give precedence to the docker build strategy.

### 2. To build and deploy the sample application from the command line, but at least have automatic source language detection occur, you can run:

```
oc new-app --strategy=source https://github.com/openshift-katacoda/blog-django-py --name blog-from-source-auto
oc expose svc/blog-from-source-auto
```
