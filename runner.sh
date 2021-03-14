#!/bin/bash

# This script runs another script passed as an argument and has the ability to
# terminate the script via an external signal.


script=$@

trap 'kill -15 $_pid$' SIGINT SIGTERM


run_script() {
    ./$script
}

run_script
