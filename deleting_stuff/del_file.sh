#!/bin/bash

# Purpose: A shell script that changes to a directory, checks for the existance
# of a file and deletes it if the file exists,
# or reports that the file was not found.


# set main variables:
unset TMP_DIR FILE_TO_DELETE

TMP_DIR=$1
FILE_TO_DELETE=$2


# set color formatting variables:
unset RESET ERROR WARNING SUCCESS INFO

RESET="\033[00m"        # default
ERROR="\033[1;31m"      # red
WARNING="\033[1;33m"    # yellow
SUCCESS="\033[1;32m"    # green
INFO="\033[1;34m"       # blue


# help function
usage() {
    printf "\n${INFO}Usage${RESET}: $(basename $0) </absolute/path/to/dir> <file> - provide absolute directory path,\n\t\t\t\t\t   and file to be deleted.\n\t\t\t\t\t   ${INFO}Exiting!${RESET}\n\n"
}


# function to strip as many trailing slashes as there are:
strip_trailing_slashes() {
    # keep stripping trailing / as long as they exist
    while [[ $TMP_DIR == */ ]]; do
        TMP_DIR=${TMP_DIR%*?}
    done
}


# test that (2) argumants have been provided to the script,
# if not, print the usage message and exit
# else, continue
if [ $# -ne "2" ]; then
    usage;
    exit 1
fi

# check if a relative path has been provided - not starting with a '/'
# if true, print a message and exit
if ! [[ $TMP_DIR == /* ]]; then
    printf "\n${ERROR}FATAL${RESET}: \"$TMP_DIR\" provided, must be an absolute path,\n\te.g. \'/path/to/directory'  \n\n\t${ERROR}Exiting!${RESET}\n\n"
    exit 2
fi

# check if the path has a trailing '/',
# if it does, call the slash stripping funcion,
# else, continue
if [[ $TMP_DIR == */ ]]; then
    strip_trailing_slashes "${TMP_DIR}"
fi


cd "$TMP_DIR" &> /dev/null
# check we have cd'ed to correct directory
pwd | grep "^${TMP_DIR}$" &> /dev/null
if [ "$?" -ne "0" ]; then
    printf "\n${ERROR}FATAL${RESET}: Failed to change directory to \"$TMP_DIR\".  ${ERROR}Exiting!${RESET}\n\n"
    exit 2

else
    printf "\n${SUCCESS}SUCCESS${RESET}: Changed to \"$TMP_DIR\" directory.\n\n"
fi

# check if file exists
if ! [ -f $FILE_TO_DELETE ]; then
    printf "\n${WARNING}WARNING${RESET}: FILE \"${FILE_TO_DELETE}\" not found.  ${WARNING}Exiting!${RESET}\n\n"
    exit 1

else
    echo "File \"${FILE_TO_DELETE}\" found!"
    echo "Deleting file \"${FILE_TO_DELETE}\""
    rm -rf ${FILE_TO_DELETE};
    if ! [ -f $FILE_TO_DELETE ]; then
        printf "\n${SUCCESS}SUCCESS${RESET}: File \"$TMP_DIR/$FILE_TO_DELETE\" deleted.\n\n\t${SUCCESS}Exiting!${RESET}\n\n"
        exit 0

    else
        printf "\n${ERROR}FATAL${RESET}: Failed to delete \"$FILE_TO_DELETE\". ${ERROR}Exiting!${RESET}\n\n"
        exit 2
        echo;
    fi
fi
