#!/bin/bash
# See https://askubuntu.com/questions/58814/how-do-i-add-environment-variables
# See https://stackoverflow.com/questions/45502996/how-to-set-environment-variable-in-linux-permanently
# See https://stackoverflow.com/questions/8352851/how-to-call-one-shell-script-from-another-shell-script
# When you run a shell script, it's done in a sub-shell so it cannot affect the parent shell's environment.
# You want to source the script by doing:
# ". ./some.script.name.sh"
# or "source ./some.script.name.sh"

# Note there's a conflict with using the SCRIPT_NAME that ends up having "setup.sh", because of sourcing the below setup.sh script)
# This is why, we are using a MY_SCRIPT_NAME to avoid conflict with the setu.sh SCRIPT_NAME variable)
# See: https://stackoverflow.com/questions/10781824/why-doesnt-a-shell-get-variables-exported-by-a-script-run-in-a-subshell
# We execute this script by sourcing it as follows: ". ./initialize.environment.sh"

MY_SCRIPT_NAME=initialize.environment.sh

echo "==================================================="
echo "Start script = $MY_SCRIPT_NAME"

# Step-1: Let's setup the necessary environment variables (notice we are sourcing the script by using a dot ".")

. ./setup.sh

# Step-2: Let's stop and remove all the named containers that we created (including the private registry container)

./remove.local.container.sh

# Step-3: Let's remove all the local Docker images, including the registry Docker image, that we loaded using the script: load.local.image.from.archive.sh

./remove.local.image.sh remove_registry_docker_image

# Step-4: Let's remove all the named images that we loaded into the private registry

./remove.image.from.private.registry.sh

# Step-5: Let's load our images from the archives to our local registry (including the registry Docker image)

./load.local.image.from.archive.sh

# Step-6: Let's start the private registry (since we have loaded a registry Docker image)

./start.private.registry.sh

# Step-7: Let's push our images to the private registry (no need to push the registry Docker image)

./push.image.to.private.registry.sh

# Step-8: Let's remove all the local Docker images, except the registry Docker image, that we loaded using the script: load.local.image.from.archive.sh

./remove.local.image.sh

echo "End script = $MY_SCRIPT_NAME"
echo "==================================================="

