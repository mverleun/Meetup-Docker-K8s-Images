#!/bin/bash

# This script is used to check the readiness of a POD.
# If a pod works fine the script exits with exit code 0
# otherwise, a non exit code is used.
#
# Add the following (or similar) code to the helm chart 
# files in order to use it.
#
#   readinessProbe:
#     periodSeconds: 3
#     successThreshold: 1
#     failureThreshold: 2
#     initialDelaySeconds: 30
#     timeoutSeconds: 5
#     exec:
#      command:
#         - /opt/probes/readiness.sh
#
# Consider various tests such as availability of certain filesystems, environment variables 
# or connectivity/responses from/to (web)servers.

function probe_log() {
    echo "$( date +%D-%T ): ${1}" > /proc/1/fd/1
    exit 1
}
#
# Debug checks:
# 
# Report a NOT READY status if the file /tmp/notready does exist:
cat /tmp/notready > /dev/null 2>&1 && probe_log "File /tmp/notready exists"

# Report A NOT READY status if the file /etc/passwd does NOT exist:
cat /etc/passwd > /dev/null 2>&1 || probe_log "File /etc/passwd does not exist"

# Check if the following filesystem exist.
df /opt > /dev/null 2>&1 || probe_log "Filesystem /opt not found"

# Check DB connectivity



# If we reached this point we can assume that everything is fine.
# Exit with an okay status
exit 0