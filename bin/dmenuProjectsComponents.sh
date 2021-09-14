#!/bin/bash

projects_commands="shaq\nstamford\nzizou\nitest\nfrodeno\niaac\niaac-generic\niaac-initial\njenkins-shared-library\njenkins-agent-containers"

project_command=$(echo -e "$projects_commands" | dmenu -i -p "Projects:")

if [ $project_command == "shaq" ]; then
    cd /home/flo/projects/cot/$project_command && goland .
elif [ $project_command == "stamford" ]; then
    cd /home/flo/projects/cot/$project_command && goland .
elif [ $project_command == "itest" ]; then
    cd /home/flo/projects/cot/$project_command && goland .
else
    cd /home/flo/projects/cot/$project_command && idea .
fi

