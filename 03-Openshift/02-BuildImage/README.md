## Build Image from S2I

### 1. Login with Developer Profile

### 2. Click on +Add Icon 

### 3. Create Application form Samples -> Search -> httpd -> Select Httpd. 

### 4. Create a Sample Applications 
```
Name: httpd-sample
Build: <Default>
Repo : <Default>
```

### 5. Check the Topology 

### 6. Select -> httpd-sample -> check for routes -> click on URL.

### 7. Select Build -> Build Config. 

### Extra 

```
$ oc new-app centos/httpd-24-centos7~https://github.com/sclorg/httpd-ex
```

### You can also deploy the sample template for the application:
```
$ oc new-app -f https://raw.githubusercontent.com/sclorg/httpd-ex/master/openshift/templates/httpd.json 
```
