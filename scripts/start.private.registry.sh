#!/bin/bash

SCRIPT_NAME=start.private.registry.sh

echo "==================================================="
echo "Start script = $SCRIPT_NAME"

# Define the necessary values to use

registry_image_name=$REGISTRY_IMAGE_NAME
registry_container_name=$REGISTRY_CONTAINER_NAME
registry_host_port=5000
registry_container_port=5000

# Let's stop the registry container

docker container stop $registry_container_name

# Let's remove the registry container

docker container remove $registry_container_name

# Start the private registry in the background

docker run -itd -p $registry_host_port:$registry_container_port --name $registry_container_name $registry_image_name

echo "End script = $SCRIPT_NAME"
echo "==================================================="


# NOTES:

# http://localhost:5000/v2/_catalog
#
# {
#    "repositories": [
#        "alpine",
#        "redhat/ubi8"
#    ]
# }

# http://localhost:5000/v2/redhat/ubi8/tags/list
#
# {
#    "name": "redhat/ubi8",
#    "tags": [
#        "8.10"
#    ]
# }

# http://localhost:5000/v2/alpine/tags/list
#
# {
#    "name": "alpine",
#    "tags": [
#        "3.20.3"
#    ]
# }