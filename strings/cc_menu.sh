#!/bin/bash


INSTALLATION_HEADER="Installation Options"
echo "title: ${#INSTALLATION_HEADER}"

COLS=$(tput cols)
echo "pane: $COLS"

print_header () {

    local equal=()
    local title="$1"
    local mid=$(((${#title}+$COLS)/2))
    for (( i=0; $i < ${#title} ; i=$(($i+1)) )); do
        local hyphen+="-"
    done

    printf "%*s\n" $mid "$title"
    printf "%*s\n" $mid "$hyphen"
    echo ""
    echo ""
}


print_install_options () {

    local title=${1}
    local mid=$(((${#title}+$COLS)/2))
    echo "mid point: $mid"
    for (( i=0; $i < ${#title} ; i=$(($i+1)) )); do
        local hyphen+="-"
    done

    printf "%*s\n" $mid "$hyphen"
    for i in "${install_options[@]}"; do
        printf "%-*s%s\n" $((${mid}-${#title})) " " "$i"
    done
    printf "%*s\n" $mid "$hyphen"
}


install_options=("1. Install" "2. Uninstall")
print_header "$INSTALLATION_HEADER"
print_install_options "$INSTALLATION_HEADER"
