## Openshift App Deployment 

## 1. Pod Deployment 

### 1. Let's Deploy a Pod & Observe 
```
oc run myblog-pod --image=amitvashist7/blog-django-py --port=8080
```

### 2. Create a Service to expose Pod 
```
oc expose pod  myblog-pod
```

### 3. Create a Route
```
oc expose service myblog-pod
```


## 2. Openshift New-App Creation 

### 1. Let's create a new app 
```
oc new-app --image=amitvashist7/blog-django-py --name myblog-app
```

### 2. To the check status of all object's of app. 
```
oc status 
```

### 3. Create a Route
```
oc expose service myblog-app
```



## 3. Openshift New-App Deployment with Env Varibales

### 1. Let's create a new app 
```
oc new-app --image=amitvashist7/blog-django-py --name myblog-green-app --env BLOG_BANNER_COLOR=green 
```

### 2. To the check status of all object's of app. 
```
oc status 
```

### 3. Create a Route
```
oc expose service myblog-green-app 
```



