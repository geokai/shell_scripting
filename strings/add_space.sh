#!/bin/bash

source ~/bin/local/greenbar2.sh

# text_string="Hello, it's me again"
text_string=$1
pane_width=$COLUMNS
echo $pane_width
# diff=$(( $pane_width - ${#text_string} ))
full_string=$(printf "%-${pane_width}s" "$text_string")

echo "$full_string" | greenbar2
