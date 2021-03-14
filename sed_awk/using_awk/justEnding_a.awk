# this awk script sets the 'Field Separator, FS' to 'tab, \t' and evaluates the
# 'countries.data' file, matching lines whos fourth field values end with an 'a'.

BEGIN { FS = OFS = "\t" } $4 ~ /a$/
