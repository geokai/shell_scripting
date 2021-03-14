$2 > 4.5 {n = n+1; pay = pay + $2*$3}
END {
    if (n > 0)
        print n, "employees, total pay is", pay",", "average pay is", pay/n
    else
        print "no employees earned more than $4.50 an hour"
}
