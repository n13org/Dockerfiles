# Docker Deployer as a Buddy

Go to the working folder

Create the image
```
docker build -t n13org/dockerdeployer .
```

Start the container with a name (for reuse purpose)
```
docker run -it --name myDockerDeployer n13org/dockerdeployer
```

Start the container and remove it in the end
```
docker run -it --rm n13org/dockerdeployer
```

Start the container and remove it in the end
```
docker run -it --rm -v D:\n13.org\Dockerfiles\::/ws n13org/dockerdeployer
```

Im Container
```
ls /scripts
ls /ws
```