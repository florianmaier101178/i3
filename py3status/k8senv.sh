#!/bin/bash

cat /home/flo/.kube/config | grep "cluster: haubus" | awk '{print $2}' | sed 's/.\{3\}$//' | sed 's/^.\{6\}//' | awk '{printf $1}'

