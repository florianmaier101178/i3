#!/bin/bash

projects_commands="iaac\niaac-initial\njenkins-slaves"

project_command=$(echo -e "$projects_commands" | dmenu -i -p "Projects:")

cd /home/flo/projects/cot/$project_command && idea .

