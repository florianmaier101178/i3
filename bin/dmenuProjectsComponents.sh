#!/bin/bash

projects_commands="shaq\nstamford\nzizou\nitest\nmahomes\nfrodeno\niaac\niaac-generic\niaac-initial\njenkins-shared-library\njenkins-agent-containers\nlimsg-importer\npanini\nlogger"

project_command=$(echo -e "$projects_commands" | dmenu -i -p "Projects:")

# the first line in the if cascade check the variable against "empty or spaces string", this handles pressing the escape key ;-)
if [[ -z "${project_command// }" ]]; then
    notify-send -t 2000 "escape key opens no project ;-)"
elif [ $project_command == "shaq" ]; then
    cd /home/flo/projects/cot/$project_command && goland .
elif [ $project_command == "stamford" ]; then
    cd /home/flo/projects/cot/$project_command && goland .
elif [ $project_command == "itest" ]; then
    cd /home/flo/projects/cot/$project_command && goland .
elif [ $project_command == "limsg-importer" ]; then
    cd /home/flo/projects/cot/$project_command && goland .
elif [ $project_command == "panini" ]; then
    cd /home/flo/projects/cot/$project_command && goland .
elif [ $project_command == "logger" ]; then
    cd /home/flo/projects/cot/lmb/udsconverteddataretriever && pycharm .
else
    cd /home/flo/projects/cot/$project_command && idea .
fi

