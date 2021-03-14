# field - print named fields if each input line
#   usage: field n1 n2 n3 ... file1 files2 file3

# awk '
BEGIN { FS = OFS = "\t";
        for (i = 1; ARGV[i] ~ /^[0-9]+$/; i++) { # collect numbers
                fld[++nf] = ARGV[i]
                ARGV[i] = ""
          }
        if (i >= ARGC)  # no file names so force stdin
          ARGV[ARGC++] = "-"
      }
{   for (i = 1; i <= nf; i++)
        printf("%s%s", $fld[i], i < nf ? " " : "\n")
}
# ' $*
