#!/bin/bash

if [ -z $VERSION_FILE_PATH ]
then
    drone_version=`cat drone_build_version.html`
else
    drone_version=`cat $VERSION_FILE_PATH/drone_build_version.html`
fi

while :
do
    web_version=`curl -sk $URL/drone_build_version.html` 
    if [[ $drone_version == $web_version ]]
    then
        exit 0
    fi
    sleep 5
done
