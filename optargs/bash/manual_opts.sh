#!/bin/bash
# POSIX
# manual.sh - Purpose: this script shows how to manually parse options and
# parameters.
# This method allows for both short and long option types without the need
# for getopts builtin or getopt external.


die() {
    printf "\n%b\n\n" "$1" >&2  # use '%b' to expand the color escape sequences
}


show_usage() {
    printf "\n${INFO}USAGE${RESET}: $(basename $0) <options>\n\n"
}


# Initialize all the option variables.
# This ensures we are not contaminated by variables from the environment.

file=
verbose=0

# set color excape sequences to variables:
RESET="\033[00m"       # default
ERROR="\033[1;31m"     # red
WARNING="\033[1;33m"   # yellow
INFO="\033[1;32m"      # green


# parse the options:
while :; do
    case $1 in
        -h|-\?|--help)
            show_usage   # display a 'usage' synopsis
            exit
            ;;

        -f|--file)      # takes an option argument; ensure it has been specified
            if [ "$2" ]; then
                file=$2
                printf "\nYou have provided: $file\n\n"
                shift
            else
                die "${ERROR}ERROR${RESET}: \"$1\" requires a non-empty option argument."
                exit 2
            fi
            ;;

        --file=?*)
            file=${1#*=}    # Delete everything up to "=" and asign the remainder
            printf "\nYou have provided: $file\n\n"
            ;;

        --file=)        # Handle the case of an empty "--file="
            die "${ERROR}ERROR${RESET}: \"$1\" requires a non-empty option argument."
            exit 2
            ;;

        -v|--verbose)
            verbose=$((verbose + 1))    # Each "-v" adds 1 to verbosity
            ;;

        --)             # End of all options
            shift
            break
            ;;

        -?*)
            printf "\n${WARNING}WARNING${RESET}: Unknown option (ignored): %s\n\n" "$1" >&2
            exit 1
            ;;

        *)              # Default case: No more options, so break out of loop
            break
    esac

    shift
done


# if --file was provided, open it for writing, else duplicate stdout
if [ "$file" ]; then
    # exec 3> "$file"
    # printf "$file\n\n"
    printf "Verbosity level\t:\t%d\n" "$verbose"
    printf "Parameters #\t:\t%d\n" "$#"
    printf "Parameters @\t:\t%s\n" "$@"
    printf "\n"

else
    exec 3>&1
fi


# Rest of the program here.
# If there are imput files (for example) that follow the options, they
# will remain in the "$@" positional parameters.

# End of file: manual_opts.sh
