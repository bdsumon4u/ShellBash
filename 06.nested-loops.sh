#!/bin/bash

a=0 # No space in around

while [ $a -lt 10 ]
    do
        b=$a
        until [ $b -lt 0 ]
            do
                echo -n "$b "
                b=`expr $b - 1`
            done
        echo
        a=`expr $a + 1`
    done
