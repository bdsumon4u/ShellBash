#!/bin/bash

if [ $# -ne 1 ]
then
    echo "Please Provide Exactly One CLI Parameter [filename]"
else
    echo "File Content:" > $1 # Override '>'
    echo -n "Please Enter File Content: "
    cat >> $1 # Append '>>'
fi
