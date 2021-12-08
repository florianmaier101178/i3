#!/bin/bash

# [[ -z "${project_type// }" ]]
# the above line checks the variable against "empty or spaces string", this handles pressing the escape key ;-)

function abort_project_selection() {
    notify-send -t 2000 "aborted project selection ;-)"
    exit 1
}

function cot_project_type_selection() {
    projects_type="domain\ninfrastructure\nother"
    project_type=$(echo -e "$projects_type" | dmenu -i -p "cot project type:")

    if [[ -z "${project_type// }" ]]; then
        abort_project_selection
    fi

    case "$project_type" in
        domain)
            cot_projects_domain
            ;;
        infrastructure)
            cot_projects_infrastructure
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

function open_project_in_pycharm() {
    cd /home/flo/projects/cot/$1 && pycharm .
}

function cot_projects_domain() {
    projects_domain="itest\nmahomes\npirlo\nsebi\nshaq\nstamford\nzizou"
    project_domain=$(echo -e "$projects_domain" | dmenu -i -p "cot domain projects:")


    if [[ -z "${project_domain// }" ]]; then
        abort_project_selection
    fi

    case "$project_domain" in
        itest|sebi|shaq|stamford)
            open_project_in_goland $project_domain
            ;;
        mahomes|pirlo|zizou)
            open_project_in_idea $project_domain
            ;;
    esac
}

function cot_projects_infrastructure() {
    projects_infrastructure="bianconeri\nfredi\nfrodeno\niaac\niaac-generic\niaac-initial\njenkins-agent-containers\njenkins-shared-library\nlimsg-importer\npanini"
    project_infrastructure=$(echo -e "$projects_infrastructure" | dmenu -i -p "cot infrastructure projects:")

    if [[ -z "${project_infrastructure// }" ]]; then
        abort_project_selection
    fi

    case "$project_infrastructure" in
        fredi|limsg-importer|panini)
            open_project_in_goland $project_infrastructure
            ;;
        bianconeri|frodeno|iaac|iaac-generic|iaac-initial|jenkins-agent-containers|jenkins-shared-library)
            open_project_in_idea $project_infrastructure
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

