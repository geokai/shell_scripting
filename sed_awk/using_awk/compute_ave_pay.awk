{pay = pay + $2*$3}
END {
    print NR, "Employees."
    printf("Total pay is:$%.2f\n", pay)
    printf("Average pay is:$%.2f\n", pay/NR)
}
