BEGIN { FS = OFS = "\t" }
#BEGIN { FS = "\t" }

$4 ~ /.*Asia$/ { print $1",", $4",", $3, "million people."; pop = pop + $3; n = n + 1 }
END              { print "------------------------------------------------------------";
                  print "Total population of the", n,
                    #"American countries is", pop, "million."
                    #"European countries is", pop, "million."
                    "Asian countries is", pop, "million."
                 }
