#! /usr/bin/bash

i=0
for file in `ls *.c.out`
do
        rm -rf $file
        i=$(($i+1))
        if [ $i -eq $1 ]
        then
                break
        fi
done
