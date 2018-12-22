#!/bin/bash

trap 'echo "error code: $?"' EXIT

die(){
    echo "An error occurred!"
    exit 42
}

die
