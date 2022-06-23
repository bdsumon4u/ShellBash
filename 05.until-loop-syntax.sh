#!/bin/bash

a=10 # No space in around

until [ $a -le 0 ]
    do
        echo $a # Statement
        # No space in around
        a=`expr $a - 1` # Statement
    done
