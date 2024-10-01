# utilities
This project contains scripts to help with starting and stopping a Private Registry, adding and removing Docker images from a Private Registry, etc...

Make sure to use this command for each script in order to fix any formatting issues between Windows and Linux

sed -i -e 's/\r$//' some.script.name.sh

1- remove.local.image.sh: Removes all the listed images from the local machine

2- load.image.from.archive.sh: Loads the listed images from the listed archive file to the local machine

3- start.private.registry.sh: Starts a Private Registry

4- remove.image.from.private.registry.sh: Removes a list of images from the Private Registry

5- push.image.to.private.registry.sh: Pushes a list of images to the Private Registry


Steps:

1- The Docker images have been downloaded from Docker Hub and saved into tar files: C:\MyDevelopment\downloads\Docker images\work-docker-images
2- Example: ubuntu-20.04.tar.gz and redhat-ubi8-8.10.tar.gz
3- Use the "*remove.local.image.sh*" script to remove all the listed images from the local machine
4- Use the "*load.image.from.archive.sh*" script to load the listed images from the listed archive file to the local machine
5- Now, we should have the ubuntu:20.04 and redhat/ubi8:8.10 Docker images in our local machine
6- Use the "*start.private.registry.sh*" script to start our Private Registry (stop and remove existing container, then start a new container)
7- Use the "*remove.image.from.private.registry.sh*" script to remove a list of images from the Private Registry
8- Use the "*push.image.to.private.registry.sh*" script to push a list of images to the Private Registry
