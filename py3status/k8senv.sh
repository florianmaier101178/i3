#!/bin/bash

PROJECT=$(kubecfg project show | head -n -1 | tail -n +2 | xargs)
CONTEXT=$(kubecfg context show | head -n -1 | tail -n +2 | xargs)

printf "\n $PROJECT - $CONTEXT\n"

