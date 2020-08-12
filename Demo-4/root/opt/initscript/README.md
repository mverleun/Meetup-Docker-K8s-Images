# initscript.sh

This script is executed when the container is created. An 'init container' will execute this script and prepare the environment

Make sure that you define an init-container in the helm chart, otherwise this script won't be executed.
