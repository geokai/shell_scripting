#!/bin/bash



# set variables:
unset NEW_FILE WORK_DIR
WORK_DIR=$1
NEW_FILE=$2


_touch() {
    touch "${NEW_FILE}"
}


if ! [ $# -eq 0 ]; then

    while getopts ":ht:d:e:" opt; do
        case $opt in
            t)
                echo "Option [$1] was triggered, with parameters: ${OPTARG[@]}" >&2
                echo "number of args: $#"
                # exit 0
                ;;
        esac
    done
# else
#     exit 0
fi


# _touch
printf "\$1: $1\n"
printf "\$2: $2\n"
