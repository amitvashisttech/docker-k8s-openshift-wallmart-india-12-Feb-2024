# Docker - Essential Commands

### The below are the list of essential commands we are in need 

|     Commands                 |    Description                                  |
| ------------------------------- | --------------------------------------------- |
| docker ps | List all running containers |
| docker ps -a | List all containers stopped, running |
| docker stop container-id | Stop the container which is running |
| docker start container-id | Start the container which is stopped |
| docker restart container-id | Restart the container which is running |
| docker port container-id | List port mappings of a specific container |
| docker rm container-id or name | Remove the stopped container |
| docker rm -f container-id or name| Remove the running container forcefully |
| docker pull image-info | Pull the image from docker hub repository |
| docker pull amitvashist/k8s-tiny-web| Pull the image from docker hub repository |
| docker exec -it container-name /bin/sh | Connect to linux container and execute commands in container |
| docker rmi image-id | Remove the docker image |
| docker logout | Logout from docker hub |
| docker login -u username -p password | Login to docker hub |
| docker stats | Display a live stream of container(s) resource usage statistics |
| docker top container-id or name | Display the running processes of a container |
| docker version | Show the Docker version information |





### The below are the list of essential commands that can be used to build images

|     Commands                 |    Description                                  |
| ------------------------------- | --------------------------------------------- |
| docker images | List all the images |
| docker build -t mywebapp:v1 .  | To build a custom image from Dockerfile |
| docker commit -m "comment" -p container-id new-image-name | Commit the container to build custom image |
| docker inspect image-id | Inspect the Image Details |
  
  
### The below are the list of essential commands that can be used with network

|     Commands                 |    Description                                  |
| ------------------------------- | --------------------------------------------- |
| docker network ls | List all the network |
| docker network inspect <network-id> | Inspect the Network Details |
| docker run -d --name myweb-9 -p 8080:9091 mywebapp:v6 | Static Port Mapping |
| docker run -d --name myweb-10 -P mywebapp:v6 | Dynamic Port Mapping |
| docker inspect --format '{{.Name}} {{.State.Running}} {{.NetworkSettings.IPAddress}}' $(docker ps -q) | List the container status & IP Details |
| docker exec -it container-id ifconfig | List the container status & IP Details |
| docker network create --driver "bridge" --subnet 172.28.0.0/16 --gateway 172.28.0.254 --ip-range 172.28.0.0/24 mybr0 | Create a custom Docker Network|  
| docker run -d --name container-name --network custom-network-name  imagename:tag | Binding a container to custom network|    
  