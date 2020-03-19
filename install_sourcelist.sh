#! /bin/bash

if [[ ${proxy} != */ ]]; then 
    proxy=${proxy}/
fi

cat ./resources/sources.list | envsubst > /etc/apt/sources.list
