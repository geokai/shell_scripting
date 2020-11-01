#!/bin/bash


tobin() {
    echo "obase=2; $1" | bc
}


tobin $1
