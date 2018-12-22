#!/bin/bash

# capture CTRL+C, CTRL+Z and QUIT signals using the trap:
trap 'printf "\nControl-C disabled.\n"' SIGINT
trap 'printf "\nCannot terminate this script.\n"' SIGQUIT
trap 'printf "\nControl-Z disabled.\n"' SIGTSTP

# Create a menu using an infinite while loop:
while true
do
    clear
    # display menu:
    printf "Server Name - $(hostname)\n"
    printf "_____________________________________\n\n"
    printf "          M A I N - M E N U\n"
    printf "_____________________________________\n"
    printf "1. Display date and time.\n"
    printf "2. Display what users are doing.\n"
    printf "3. Display network connections.\n"
    printf "4. Exit\n"

    # get choice from the user:
    read -p "Enter your choice [ 1 - 4 ] " choice

    # determine the choice using case..in..esac:
    case $choice in
        1)
            printf "\n"
            printf "Today is $(date -R)\n"
            printf "\n"
            read -p "Press [Enter] key to continue..." readEnterKey
            ;;
        2)
            printf "\n"
            w
            printf "\n"
            read -p "Press [Enter] key to continue..." readEnterKey
            ;;
        3)
            printf "\n"
            netstat -nat
            printf "\n"
            read -p "Press [Enter] key to continue..." readEnterKey
            ;;
        4)
            printf "\n"
            printf "Exiting script $(basename $0)!\n"
            printf "Exit $?\n"
            printf "\n"
            exit 0
            ;;
        *)
            printf "\n"
            printf "Error: Invalid option...\n"
            printf "\n"
            read -p "Press [Enter] key to continue..." readEnterKey
            ;;
    esac

done
