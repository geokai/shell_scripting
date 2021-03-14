#!/bin/bash


p=cat
lowercase='tr [:upper:] [:lower:]'
unique=uniq
mismatch='diff --old-line-format=L --unchanged-line-format= --new-line-format='


file=$1

$p "$file" | $lowercase | $unique
