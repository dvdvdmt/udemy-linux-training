#!/bin/bash

 i=1
 count=10
 while [ $i -lt $count ]
 do
    echo
    echo "$((count - i)) seconds left to stop the process $1"
    echo
    sleep 1
    ((i+=1))
 done
 echo "$1 process is stopped"