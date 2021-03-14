BEGIN { FS = OFS = "\t" }

$4 == "North America" { $4 = "NA" }
$4 == "South America" { $4 = "SA"}
$1 == "USSR"          { $1 = "Russia"}
                      { print }
