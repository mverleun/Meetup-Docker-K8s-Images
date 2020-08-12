#!/bin/bash

function stdout() {
    echo "${1}" > /proc/1/fd/1
}

function stderr() {
    echo "${1}" > /proc/1/fd/2
}

echo This is a init script with a long delay.
for i in {1..30}; do 
    stdout "${i}"
    sleep 1 
done

stdout "We could have done something usefull as well"

exec "$@"