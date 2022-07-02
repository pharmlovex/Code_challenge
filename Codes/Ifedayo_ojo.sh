#!/bin/bash


## Question  1
cut -f 10,12,8,1 gene_disease_opt.csv | grep -i "Rheumatoid arthritis" | sort -nr > ~/Code_challenge/output/rheumatoid_arthritis.csv
echo "File Saved Successfully"
sleep 1



## Question 2
##
row_count=$(cut -f 14,1 gene_disease_opt.csv | grep -i "GPCR" | wc -l)
echo "Number of  the GPCR : $row_count"
 
sleep 1
## Question 3
## Getting all record with gene SLC15A4 and replacing the  NA in "beta" with 0
cat gene_disease_opt.csv | grep "SLC15A4" | awk '{gsub("NA",0,$8)}1' > ~/Code_challenge/output/SLC15A4.csv
echo "File Saved Successfully"

