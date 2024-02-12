
# Docker Images 

You can refer to images as the templates for the Docker containers.




## Images Commands

#### List the existimg images

```
  docker images
```

#### We can create an image from a tarball

```
  docker import
```

#### We can create an image from Dockerfile.

```
  docker build
```

#### We can create an image from a container and temporarily pause it if it is running.

```
  docker commit
```

#### To remove images

```
  docker rmi
```

#### To display the history of an image

```
   docker history
```

#### It will tag the image to a name.

```
   docker tag
```

#### It will load an image from the mentioned file along with its history.

```
   docker load < my_image.tar.gz
```

#### It will save an existing file.

```
   docker load < my_image.tar.gz
```

#### It will import the container as an image from the mentioned file without its history; thus, the file size is small. 

```
   cat my_container.tar.gz | docker import - my_image:my_tag
```

#### It will export the container.  

```
   docker export my_container | gzip > my_container.tar.gz
```

#### It will push an image or repo from the registry.  

```
   docker push repo[:tag]
```

#### It will pull an image or repo from the registry.  

```
   docker pull repo[:tag]
```

#### It will allow you to search for an image in the official registry.

```
   docker search text
```
