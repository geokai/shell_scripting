#!/bin/bash
# Shell script to find out if odd or even number provided by the user
# ----
# set variable to an integer attribute
declare -i times=0
declare -i n=0

# define function:
warning(){
    echo -e "\n*** CTRL+C and CTRL+Z keys are disabled. Please enter number only.
    Hit [Enter] to continue..."
}

# capture CTRL+C, CTRL+Z and quit signals using the trap
trap 'warning' SIGINT SIGQUIT SIGTSTP

# set an infinite while loop
# user need to enter -9999 to exit the loop
while true
do
        # get data
    read -p "Enter number (-9999 to exit) : " n

        # if it is -9999, exit
    [ $n -eq -9999 ] && { break; }

        # $n is 0, just get next number:
    [ $n -eq 0 ] && continue

        # find out if $n is odd or even
    ans=$(( n % 2 ))

        # display result
    [ $ans -eq 0 ] && echo "$n is an even number." || echo "$n is an odd number."

        # increase counter by 1
    times=$(( ++times ))
done

# reset all traps
trap - SIGINT SIGQUIT SIGTSTP

# display counter
echo "You played $times times."
echo "Bye!"
exit 0
