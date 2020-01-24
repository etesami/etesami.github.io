#!/bin/bash

unset ERR

declare -a names=("index.html" "education.html" "_includes/breadcrumb.html")

if [[ -n "$2" ]]; then
   if [[ "$1" == "fake" ]]; then
     sed -i.bak s/\"\\//\"\\/Users\\/ehsan\\/fakepath\\//g $2
     echo "$2 Ok!"
   fi
   if [[ "$1" == "real" ]]; then
     sed -i.bak s/\"\\/Users\\/ehsan\\/fakepath/\"/g $2
     echo "$2 Ok!"
   fi
else
   ERR=1
fi

if [[ ! -z "$ERR" ]]; then
    echo "change-this-path.sh <fake/real> <filename>"
fi
