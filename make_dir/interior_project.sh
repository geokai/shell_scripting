#!/bin/bash

# ------------------------------------------------------------------
# This script creates a directory structure for an interiors project
# ------------------------------------------------------------------


usage() {
    echo
    echo "Usage: $0 <project> - project name must be any single string"
    echo
    exit 1
}

proj_name=$1


[ $# -ne 1 ] && usage

mkdir -p $proj_name/{admin/{client,quotations,specification},photographs/{site_photos,fixtures_fittings,detail},drawings/{current,superceded,final,import/{dwg,pdf},export/{dwg,pdf}}}
