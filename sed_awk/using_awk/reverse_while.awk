# reverse_while - print input in reverse order by line using an array variable
#                 and a while loop.

{
    line[NR] = $0   # remember each input line (in an array)
}

END {
    i = NR          # print lines in reverse order
    # print NR
    while (i > 0)
    {
        print line[i]
        i = i - 1
    }
}
