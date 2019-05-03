#!/bin/bash

for i in 1 2 3 4 5
do
    echo "Welcome $i times"
done

for i in eat run jump play
do
    echo "See fox $i"
done

for i in eat run jump play
do
    echo "See fox $i"
done

for i in {1..5}
do
    echo $i
done

i=1
for username in $(awk -F: '{print $1}' /etc/passwd)
do
    echo "Username $((i++)) : $username"
done

i=1
awk -F: '{print $1}' /etc/passwd | while read -r username
do
    echo "Username $((i++)) : $username"
done