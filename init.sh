#!/bin/bash

# turn on bash's job control
set -m
# Start the primary process and put it in the background
/bin/bash &

# Start the helper process
/usr/sbin/sshd

# bring the primary process back into the foreground
# and leave it there
fg %1