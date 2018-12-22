BEGIN {
        FS=" "
        OFS="\011\011"
        print "First","Last","Domain"
        print "-------------------------------------------------"

}
{

        split($4,DNS,"@")
        print $2,$3,DNS[2]

}
