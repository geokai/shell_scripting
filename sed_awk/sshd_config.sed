/Port/ {
s/ 443$/ 22/
s/^/#/
}

/ClientAliveInterval/ {
s/ 60$/ 0/
s/^/#/
}
