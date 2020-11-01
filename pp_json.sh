#!/bin/bash

# formats minified json files so that 'mere mortals' can read them.

# TODO insert arguments test here!

if=$1
of=$2

cat "$1" | jq . > "$of"
