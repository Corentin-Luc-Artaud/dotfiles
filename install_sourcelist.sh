#! /bin/bash

if [[ ${proxy} != */ ]]; then 
    proxy=${proxy}/
fi

eval "cat >> EOF
cat $(<../sources.list)
EOF
" 2> /dev/null > /etc/apt/sources.list
