#!/bin/bash

a=0 # No space in around

while [ $a -lt 10 ]
    do
        a=`expr $a + 1`
        if [ $a -lt 3 ]
        then
            echo $a
            continue # n:=1
        elif [ $a -eq 5 ]
        then
            echo "Break"
            break # n:=1
        else
            if [ `expr $a % 2` -eq 1 ]
            then
                echo "Odd"
            else
                echo "Even"
            fi
        fi
    done
