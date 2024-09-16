#!/bin/bash

# Define the necessary values to use

registry_image_name=registry:2.8.3
registry_container_name=dehmani-registry
registry_host_port=5000
registry_container_port=5000

# Let's stop the registry container

docker container stop $registry_container_name

# Let's remove the registry container

docker container remove $registry_container_name

# Start the private registry in the background

docker run -itd -p $registry_host_port:$registry_container_port --name $registry_container_name $registry_image_name

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