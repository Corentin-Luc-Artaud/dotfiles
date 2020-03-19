#! /bin/bash

if [ ! -z "${proxy}" ]; then 
    if [ ${proxy} == */ ]; then 
        proxy=${proxy}/
    fi
fi

cat ./resources/sources.list | envsubst > /etc/apt/sources.list