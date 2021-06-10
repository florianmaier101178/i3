#!/bin/bash

projects_commands="appliance\ninterpreter\nfactoryfloor\nworkflow\nalarmservice\nfridgestate\nhistory\nlocalization\nmasterdata-provider\nmessaging\nrawtelemetry\nsuper-factoryfloor"

project_command=$(echo -e "$projects_commands" | dmenu -i -p "Projects:")

if [ $project_command == "rawtelemetry" ];
then
    cd /home/flo/projects/business/hau-bus-$project_command && goland .
else
    cd /home/flo/projects/business/hau-bus-$project_command && idea .
fi

