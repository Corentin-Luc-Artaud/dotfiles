#! /bin/bash

if [ ! -z "${proxy}" ]; then 
    if [ ${proxy} == */ ]; then 
        proxy=${proxy}/
    fi
fi

eval "cat >> EOF
cat $(<../sources.list)
EOF
" 2> /dev/null > /etc/apt/sources.list