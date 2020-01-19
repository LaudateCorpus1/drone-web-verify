#!/bin/bash

# Get source dir name or set to current if not given 
if [ -z $TIMEOUT ]
then 
  TIMEOUT="600"
fi

echo "Waiting for versions to match on $URL"

timeout -t $TIMEOUT /verify.sh

if [[ $? == 0 ]]
then
    echo "Success!"
    exit 0
else
    echo "Timeout after $TIMEOUT"
    exit 1
fi
