#!/bin/bash

unset ERR

declare -a names=("index.html" "education.html" "_includes/breadcrumb.html")

if [[ -n "$1" ]]; then
   if [[ "$1" == "fake" ]]; then
     for i in "${names[@]}"
     do
       echo $i
       sed -i.bak s/\"\\//\"\\/Users\\/ehsan\\/fakepath\\//g $i 
     done
   fi
   if [[ "$1" == "real" ]]; then
     for i in "${names[@]}"
     do
       echo $i
       sed -i.bak s/\"\\/Users\\/ehsan\\/fakepath/\"/g $i 
     done
   fi
else
   ERR=1
fi

if [[ ! -z "$ERR" ]]; then
    echo "change-path.sh <fake/real>"
fi
