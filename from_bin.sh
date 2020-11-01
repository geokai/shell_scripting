#!/bin/bash


frombin() {
    echo "ibase=2; $1" | bc
}


frombin $1
