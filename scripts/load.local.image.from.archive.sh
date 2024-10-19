#!/bin/bash

SCRIPT_NAME=load.local.image.from.archive.sh

echo "==================================================="
echo "Start script = $SCRIPT_NAME"

# Docker image files folder

echo "Using the docker images directory = $DOCKER_IMAGES_DIR"

# Change to the Docker image files folder

cd $DOCKER_IMAGES_DIR

# Let's list the files

ls

# List of Docker image files to load

image_file_list=("redhat-ubi8-8.10.tar.gz" "ubuntu-20.04.tar.gz" "httpd-2.4.tar.gz" "registry-2.8.3.tar.gz")

# Start loading the Docker image files

for image_file_name in ${image_file_list[@]}; do

    echo Loading Docker image file $image_file_name

    docker image load --input $image_file_name

done

echo "End script = $SCRIPT_NAME"
echo "==================================================="

