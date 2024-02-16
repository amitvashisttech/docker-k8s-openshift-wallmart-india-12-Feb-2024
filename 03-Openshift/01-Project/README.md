## Openshift Deployment via Portal

### Step 1: Login with Kubeadmin

### Step 2: Select the Administor Profile

### Step 3: Go Under Home Sections -> Select the Project

### Step 4: Click on -> Create Project 

```
Name: myfirstproject

```

### Step 5: Check the project details from cli 
```
oc login -u kubeadmin -p <kubeadminpassword> http://crc.ocp.testing
oc get project
```

### Step 6: Go Under Worlloads Sections -> Select the Pod

### Step 7: Click on -> Create Pod 

### Step 7: Now click on the Pod to check the status. 

### Step 8: Check the pod status from cli
```
oc project myfirstproject
oc get pods 
```

### Step 9: Clean Up 
```
oc delete pod --all 
```

