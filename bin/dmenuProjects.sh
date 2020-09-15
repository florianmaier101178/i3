#!/bin/bash

projects_commands="appliance\ninterpreter\nfactoryfloor\nworkflow\nalarmservice\nfridgestate\nhistory\nlocalization\nmasterdata-provider\nmessaging"

project_command=$(echo -e "$projects_commands" | dmenu -i -p "Projects:")

cd /home/flo/projects/business/hau-bus-$project_command && idea .

