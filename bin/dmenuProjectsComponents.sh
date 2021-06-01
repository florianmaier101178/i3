#!/bin/bash

projects_commands="iaac-initial\niaac"

project_command=$(echo -e "$projects_commands" | dmenu -i -p "Projects:")

cd /home/flo/projects/cot/$project_command && idea .

