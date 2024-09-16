#!/bin/bash

# List of Docker images to remove

image_list=("redhat/ubi8:8.10" "ubuntu:20.04" "httpd:2.4" "registry:2.8.3")

# Start removing the Docker images

for image_name in ${image_list[@]}; do

    echo Removing image $image_name

    # Remove the Docker image

    docker image remove $image_name

done

