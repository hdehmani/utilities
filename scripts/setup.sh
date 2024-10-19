#!/bin/bash
# See https://askubuntu.com/questions/58814/how-do-i-add-environment-variables
# See https://stackoverflow.com/questions/45502996/how-to-set-environment-variable-in-linux-permanently
# When you run a shell script, it's done in a sub-shell so it cannot affect the parent shell's environment.
# You want to source the script by doing:
# ". ./setup.sh"
# or "source ./setup.sh"

# C:\MyDevelopment\MyProjects
# C:\MyDevelopment\MyProjects\downloads\docker_images (Example: redhat-ubi8-8.10.tar.gz)
# C:\MyDevelopment\MyProjects\2024\gmsec_wsp_2024 (Example: utilities, gmsec-image)
# C:\MyDevelopment\MyProjects\GMSEC (Example: GMSEC_API-5.1-RH8_x86_64.tar.gz)

SCRIPT_NAME=setup.sh

echo "==================================================="
echo "Start script = $SCRIPT_NAME"

export DOCKER_IMAGES_DIR=/mnt/c/MyDevelopment/MyProjects/downloads/docker_images
export GMSEC_API_DIR=/mnt/c/MyDevelopment/MyProjects/GMSEC
export GMSEC_WORKSPACE_DIR=/mnt/c/MyDevelopment/MyProjects/2024/gmsec_wsp_2024
export REGISTRY_CONTAINER_NAME=dehmani-registry
export REGISTRY_IMAGE_NAME=registry:2.8.3

echo "End script = $SCRIPT_NAME"
echo "==================================================="