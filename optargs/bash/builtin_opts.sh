#!/bin/bash
# POSIX
# builtin_opts.sh - Purpose: this script shows how to parse options and
# parameters using the builtin, getopts.
# This method allows for only short option types but allows option grouping,
# for example, '-vgs' '-vv'


die() {
    printf "\n%b\n\n" "$1" >&2  # use '%b' to expand the color escape sequences
}


show_usage() {
    printf "\n${INFO}USAGE${RESET}: $(basename $0) <options>\n\n"
}


# Initialize all the option variables:
# This ensures we are not contaminated by variables from the environment.
output_file=""
verbose=0

OPTIND=1
# Resetting OPTIND is necessary if getopts was used previously in the script.
# It is a good idea to make OPTIND local if you process options in a function.


# set color excape sequences to variables:
RESET="\033[00m"       # default
ERROR="\033[1;31m"     # red
WARNING="\033[1;33m"   # yellow
INFO="\033[1;32m"      # green


# parse the options:
while getopts ":hvf:" opt; do
    case $opt in
        h)
            show_usage
            exit 0
            ;;

        v)
            verbose=$((verbose+1))
            ;;

        f)
            output_file=$OPTARG
            ;;

        :)
            die "${ERROR}ERROR${RESET}: \"-$OPTARG\" requires a non-empty option argument."
            exit 2
            ;;

        *)
            # show_usage >&2
            printf "\n${WARNING}WARNING${RESET}: Unknown option (ignored): %s\n\n" "$1" >&2
            exit 1
            ;;
    esac
done

shift "$((OPTIND-1))"   # Discard the options and sentinel --


# Everything that's left in "$@" is a non-option. In our case, a file to process.
if [ "$output_file" ]; then
    printf "\nverbose:\t[%d]\noutput_file:\t[%s]\n\nLeftovers:\n" "$verbose" "$output_file"
    printf "\t\t[%s]\n" "$@"
    printf "\n"

else
    exec 3>&1
fi


# Rest of the program here.
# If there are imput files (for example) that follow the options, they
# will remain in the "$@" positional parameters.

# End of file: manual_opts.sh
