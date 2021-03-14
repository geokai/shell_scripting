# reverse_for - print input in reverse order by line using an array variable
#               using a for loop.

{
    line[NR] = $0   # remember each input line (in an array)
}

END {
    for (i = NR; i > 0; i = i - 1)
        print line[i]
}
