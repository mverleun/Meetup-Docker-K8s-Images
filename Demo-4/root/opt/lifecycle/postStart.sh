#!/bin/bash

# Analogous to many programming language frameworks that have component 
# lifecycle hooks, such as Angular, Kubernetes provides Containers with 
# lifecycle hooks. The hooks enable Containers to be aware of events in 
# their management lifecycle and run code implemented in a handler when 
# the corresponding lifecycle hook is executed.

# PostStart
# This hook executes immediately after a container is created. However, 
# there is no guarantee that the hook will execute before the container 
# ENTRYPOINT. No parameters are passed to the handler.

#
# Add the following (or similar) code to the helm chart 
# files in order to use it.
#
# lifecycle:
#   postStart:
#     exec:
#       command: 
#       - /opt/lifecycle/postStart.sh
#   preStop:
#     exec:
#       command: 
#       - /opt/lifecycle/preStop.sh

exit 0