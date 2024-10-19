#!/bin/bash

SCRIPT_NAME=push.image.to.private.registry.sh

echo "==================================================="
echo "Start script = $SCRIPT_NAME"

# List of Docker images to push to the Private Registry

image_list=("redhat/ubi8:8.10" "ubuntu:20.04" "httpd:2.4")

# Define the necessary values

registry_host_port=5000
registry_host_name=localhost

# Start pushing the Docker images to the Private Registry

for image_name in ${image_list[@]}; do

    echo Sending image $image_name to the Private Registry

    # Tag the image using our Private Registry location and port

    docker image tag $image_name $registry_host_name:$registry_host_port/$image_name

    # Push the tagged image to our Private Registry

    docker image push $registry_host_name:$registry_host_port/$image_name

done

echo "End script = $SCRIPT_NAME"
echo "==================================================="

