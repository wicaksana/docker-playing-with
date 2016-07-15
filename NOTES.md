### Listing 
- List all images
`docker images`

- List all created containers
`docker ps -qa`

### Stopping
#### Stop running container
1. List the running container
`docker ps`
```CONTAINER ID        IMAGE                     COMMAND                  CREATED              STATUS              PORTS               NAMES
ff27b0523b12        wicaksana:ubuntu_apache   "/bin/bash"              22 seconds ago       Up 21 seconds       80/tcp              stupefied_shockley
591aa5c1cea4        wicaksana:ubuntu_apache   "/usr/sbin/apache2ctl"   About a minute ago   Up About a minute   80/tcp              determined_austin
```
2. Stop the target container using its container ID
 `docker stop 591aa5c1cea4`
3. Re-run `docker ps` to ensure that the container is indeed stopped

### Removing 
1. Remove a single image
`docker rmi <image_name>`

2. Remove all images
`docker rmi $(docker images -qf "dangling=true")`

### Build Docker Image

Steps

1. Create a `dockerfile`, with the following as the example of the content:
```FROM ubuntu:latest
MAINTAINER M. Arif W <arif@belalangtempur.com>  
RUN apt-get update && apt-get install -y apache2  
EXPOSE 80  
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
```

2. Run the following command (suppose that my username is `wicaksana`, 
and my repository name on Docker Hub is `ubuntu_apache`. The tag is `latest`): 
`docker build -f dockerfile -t wicaksana/ubuntu_apache:latest .`
Don't miss the dot '.' at the end of the command to notify the target 
directory (you may use other path)

3. See to confirm that the image is indeed created:
`docker images`  
```REPOSITORY           TAG                     IMAGE ID            CREATED             SIZE
wicaksana/ubuntu_apache latest              714d982374af        43 minutes ago      262.7 MB
nuagebec/ubuntu         latest              38118050e8fd        6 days ago          306.4 MB
ubuntu                  latest              cf62323fa025        7 days ago          125 MB
```

### Save Container to Docker Hub
Steps
1. Get the container ID (e.g., using `git ps -qa`)
2. 'Commit' the container
`docker commit ff27b0523b12 wicaksana/ubuntu_apache:latest`
3. 'Push' the container. Don't forget to create the appropriate repo first 
on Docker Hub
`docker push wicaksana/ubuntu_apache:latest`
4. See your Docker Hub to confirm this action

### Container Storage (Docker volume) and Docker Volume Container
- Mount data volume inside the container 
`docker run -it -v /home/arif:/data ubuntu /bin/bash`
It will mount `/home/arif` at docker host to `/data` at the container

- Share data between containers using docker volume container
From the container that has data to be shared by other container:
`docker run -it -v /shared_data container1 busybox /bin/sh`
On the second container, run the following to mount from `container1`:
`docker run -it --volumes-from container1 busybox /bin/sh`
