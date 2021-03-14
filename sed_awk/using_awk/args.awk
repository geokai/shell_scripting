BEGIN { FS = OFS = "\t" }
{ print FNR, NF, NR, OFS }
