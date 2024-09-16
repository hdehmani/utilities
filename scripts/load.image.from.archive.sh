#!/bin/bash

# Docker image files folder

image_folder="/mnt/c/MyDevelopment/downloads/Docker images/work-docker-images"

# Change to the Docker image files folder

cd "$image_folder"

# Let's list the files

ls

# List of Docker image files to load

image_file_list=("redhat-ubi8-8.10.tar.gz" "ubuntu-20.04.tar.gz" "httpd-2.4.tar.gz" "registry-2.8.3.tar.gz")

# Start loading the Docker image files

for image_file_name in ${image_file_list[@]}; do

    echo Loading Docker image file $image_file_name

    docker image load --input $image_file_name

done

