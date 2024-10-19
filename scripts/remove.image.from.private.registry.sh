#!/bin/bash

SCRIPT_NAME=remove.image.from.private.registry.sh

echo "==================================================="
echo "Start script = $SCRIPT_NAME"

# List of Docker images to remove from the Private Registry

image_list=("redhat/ubi8:8.10" "ubuntu:20.04" "httpd:2.4")

# Define the necessary values

registry_host_port=5000
registry_host_name=localhost

# Start removing the Docker images from the Private Registry

for image_name in ${image_list[@]}; do

    echo Removing image $image_name from the Private Registry

    # Remove the tagged image  from our Private Registry

    docker image remove $registry_host_name:$registry_host_port/$image_name

done

echo "End script = $SCRIPT_NAME"
echo "==================================================="


