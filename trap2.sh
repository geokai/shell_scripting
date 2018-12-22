#!/bin/bash
# capture an interupt # 2 (SIGINT)
trap '' 2
# read CTRL+C from keyboard with 30 second timeout
read -t 30 -p "I'm sleeping, hit CTRL+C to exit..."
