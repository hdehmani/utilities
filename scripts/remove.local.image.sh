#!/bin/bash

SCRIPT_NAME=remove.local.image.sh

echo "==================================================="
echo "Start script = $SCRIPT_NAME"

# List of Docker images to remove

image_list=("redhat/ubi8:8.10" "ubuntu:20.04" "httpd:2.4" "$REGISTRY_IMAGE_NAME")

# Do we need to remove the registry Docker image?

if [ "$1" = "remove_registry_docker_image" ]; then

    echo "We will be removing Docker image = $REGISTRY_IMAGE_NAME"

else

    echo "We will NOT remove Docker image = $REGISTRY_IMAGE_NAME"

    image_list=("redhat/ubi8:8.10" "ubuntu:20.04" "httpd:2.4")
fi

# Start removing the Docker images

for image_name in ${image_list[@]}; do

    echo Removing image $image_name

    # Remove the Docker image

    docker image remove $image_name

done

echo "End script = $SCRIPT_NAME"
echo "==================================================="

