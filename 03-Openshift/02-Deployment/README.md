## Openshift Deployment via Portal

### Step 1: Login with Kubeadmin

### Step 2: Select the Administor Profile

### Step 3: Go Under workload Sections -> Select the Deployment

### Step 4: Select Deployment -> Create Deployment -> Upload the YAML File 

```
oc create -f deployment.yaml 
```

### Step 5: Go Under Network Sections -> Create Service -> Upload Service Yaml File 
```
oc create -f service.yaml 
```

### Step 6: Select the Route -> Create Route 
```
Name: my-py-webapp
Hostname: <empty>
Path: / 
Service : python-web-svc
TargetPort: <select from dropdown>
Secutity : <keep it uncheck>
```

### Step 7: Now click on the location URL to check the App. 

