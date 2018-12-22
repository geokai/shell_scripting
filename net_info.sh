#!/bin/bash

# A simple Shell Script To Get Linux Network Information
# Copied form 'cyberciti.biz/guide/Shell_Comments'
# G Kaimakis - 29/Nov/2018

echo "Current date : $(date -R) @ $(hostname)"
echo "Network configuration"
/sbin/ifconfig
