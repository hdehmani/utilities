# utilities

# This project contains scripts to help with:

- Starting and stopping a Private Registry
- Adding Docker images to a Private Registry
- Removing Docker images from a Private Registry
- Loading Docker images from archive files

Make sure to use this command for each script in order to fix any formatting issues between Windows and Linux

**sed -i -e 's/\r$//' some.script.name.sh**

- **setup.sh**: Creates environment variables

- **initialize.environment.sh**: Stops and removes installed Docker images, then reloads the images from archive files

- **remove.local.container.sh**: Stops and removes all the listed container names from the local machine

- **remove.local.image.sh**: Removes all the listed images from the local machine (can specify argument remove_registry_docker_image)

- **load.local.image.from.archive.sh**: Loads the listed images from the listed archive file to the local machine

- **start.private.registry.sh**: Starts a Private Registry

- **remove.image.from.private.registry.sh**: Removes a list of images from the Private Registry

- **push.image.to.private.registry.sh**: Pushes a list of images to the Private Registry

## Steps to follow:

- The Docker images have been downloaded from **Docker Hub** and saved into tar files in this directory: **C:\MyDevelopment\MyProjects\downloads\docker-images**

- Example: **ubuntu-20.04.tar.gz** and **redhat-ubi8-8.10.tar.gz**

- Use the "**initialize.environment.sh**" script to remove and reinstall all the necessary Docker images to the Private Registry

- Make sure to use this command so that the environment variables are added to the shell executing the "**initialize.environment.sh**" script (The "." = source):

        **. /initialize.environment.sh**

- You can also use each script individual to achieve different results

- Use the **remove.local.container.sh** to stop and remove all the listed container names from the local machine

- Use the "**remove.local.image.sh**" script to remove all the listed images from the local machine

- Use the "**load.local.image.from.archive.sh**" script to load the listed images from the listed archive file to the local machine

- Now, we should have the ubuntu:20.04 and redhat/ubi8:8.10 Docker images in our local machine

- Use the "**start.private.registry.sh**" script to start our Private Registry (stop and remove existing container, then start a new container)

- Use the "**remove.image.from.private.registry.sh**" script to remove a list of images from the Private Registry

- Use the "**push.image.to.private.registry.sh**" script to push a list of images to the Private Registry

- The utilities project is accessed as follows: /mnt/c/MyDevelopment/MyProject/2024/gmsec_wsp/utilities
