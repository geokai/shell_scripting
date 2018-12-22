#!/bin/bash


usage() { printf "\nusage: $(basename $0) [-a <param>] | [-h]\n"; }


# test for no arguments:
if ! [ $# -eq 0 ]; then

    while getopts ":ha:" opt; do
        case $opt in
            a)
                echo "Option [$1] was triggered, with parameter: ${OPTARG}" >&2
                echo -e "number of args: $#\n"
                exit 0
                ;;

            \?)
                echo "Invalid option: -$OPTARG" >&2
                usage
                echo -e "number of args: $#\n"
                exit 1
                ;;

            :)
                echo "Option [-$OPTARG] requires an argument." >&2
                usage
                echo -e "number of args: $#\n"
                exit 2
                ;;

            h)
                usage
                echo "example:"
                echo "go_test -h  Displays this help and exits"
                echo -e "number of args: $#\n"
                exit 0
        esac
    done

else
    printf "\nThis directory is: ${PWD}\n\n"
    exit 0
fi
