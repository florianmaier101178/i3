#!/bin/bash

# [[ -z "${project_type// }" ]]
# the above line checks the variable against "empty or spaces string", this handles pressing the escape key ;-)

function abort_project_selection() {
    notify-send -t 2000 "aborted project selection ;-)"
    exit 1
}

function cot_project_type_selection() {
    projects_type="domain\ntest\ninfrastructure\nui\nother"
    project_type=$(echo -e "$projects_type" | dmenu -i -p "cot project type:")

    if [[ -z "${project_type// }" ]]; then
        abort_project_selection
    fi

    case "$project_type" in
        domain)
            cot_projects_domain
            ;;
        test)
            cot_projects_test
            ;;
        infrastructure)
            cot_projects_infrastructure
            ;;
        ui)
            cot_projects_ui
            ;;
        other)
            cot_projects_other
            ;;
    esac
}

function open_project_in_goland() {
    cd /home/flo/projects/cot/$1 && goland .
}

function open_project_in_idea() {
    cd /home/flo/projects/cot/$1 && idea .
}

function open_project_in_webstorm() {
    cd /home/flo/projects/cot/$1 && webstorm .
}

function open_project_in_pycharm() {
    cd /home/flo/projects/cot/$1 && pycharm .
}

function cot_projects_domain() {
    projects_domain="mahomes\npavel\npirlo\nsebi\nshaq\nstamford\nzizou"
    project_domain=$(echo -e "$projects_domain" | dmenu -i -p "cot domain projects:")

    if [[ -z "${project_domain// }" ]]; then
        abort_project_selection
    fi

    case "$project_domain" in
        sebi|shaq|stamford)
            open_project_in_goland $project_domain
            ;;
        mahomes|pavel|pirlo|zizou)
            open_project_in_idea $project_domain
            ;;
    esac
}

function cot_projects_test() {
    projects_test="itest\nitest-executor\nroger"
    project_test=$(echo -e "$projects_test" | dmenu -i -p "cot test projects:")

    if [[ -z "${project_test// }" ]]; then
        abort_project_selection
    fi

    case "$project_test" in
        itest|roger)
            open_project_in_goland $project_test
            ;;
        itest-executor)
            open_project_in_idea $project_test
            ;;
    esac
}

function cot_projects_infrastructure() {
    projects_infrastructure="bianconeri\nfredi\niaac\niaac-generic\niaac-initial\njenkins-agent-containers\njenkins-shared-library\nkafka-topics\nlimsg-importer\nlionel\npanini"
    project_infrastructure=$(echo -e "$projects_infrastructure" | dmenu -i -p "cot infrastructure projects:")

    if [[ -z "${project_infrastructure// }" ]]; then
        abort_project_selection
    fi

    case "$project_infrastructure" in
        fredi|limsg-importer|lionel|panini)
            open_project_in_goland $project_infrastructure
            ;;
        bianconeri|iaac|iaac-generic|iaac-initial|jenkins-agent-containers|jenkins-shared-library|kafka-topics)
            open_project_in_idea $project_infrastructure
            ;;
    esac
}

function cot_projects_ui() {
    projects_ui="eliud\nmarta"
    project_ui=$(echo -e "$projects_ui" | dmenu -i -p "cot ui projects:")

    if [[ -z "${project_ui// }" ]]; then
        abort_project_selection
    fi

    case "$project_ui" in
        eliud|marta)
            open_project_in_webstorm $project_ui
            ;;
    esac
}

function cot_projects_other()  {
    projects_other="logger"
    project_other=$(echo -e "$projects_other" | dmenu -i -p "cot other projects:")

    if [[ -z "${project_other// }" ]]; then
        abort_project_selection
    fi

    case "$project_other" in
        logger)
            open_project_in_pycharm "/lmb/udsconverteddataretriever"
            ;;
    esac
}

cot_project_type_selection

