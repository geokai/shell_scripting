# concatenating with a newline escape character:

BEGIN {print "-----------------------------------------"}

{names = names $1 "\n"}

END {printf("%d emps:\n%s", NR, names)
     print "-----------------------------------------"}
