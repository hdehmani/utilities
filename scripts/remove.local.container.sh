#!/bin/bash

SCRIPT_NAME=remove.local.container.sh

echo "==================================================="
echo "Start script = $SCRIPT_NAME"

# List of Docker container names to remove

container_list=("$REGISTRY_CONTAINER_NAME")

# Start removing the Docker containers

for container_name in ${container_list[@]}; do

    echo Stopping Docker container $container_name

    # Stop the Docker container

    docker container stop $container_name

    echo Removing container $container_name

    # Remove the Docker container

    docker container remove $container_name

done

echo "End script = $SCRIPT_NAME"
echo "==================================================="
