#!/bin/bash
if [ -z $1 ]; then 
    LENGTH_OF_PASSWORD=32
else
    LENGTH_OF_PASSWORD=$1
fi

< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-$LENGTH_OF_PASSWORD};echo;
