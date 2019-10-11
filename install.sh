#!/usr/bin/env bash
title() {
    local color='\033[1;37m'
    local nc='\033[0m'
    printf "\n${color}$1${nc}\n"
}

title "Provision playbook for $(whoami)"
ansible-playbook -i "localhost," -c local playbook.yml --extra-vars="zsh_user=$(whoami)"
