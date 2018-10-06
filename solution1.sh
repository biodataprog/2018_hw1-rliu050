#!/bin/bash

# code should go here to download file https://biodataprog.github.io/programming-intro/data/Ecoli-vs-Yersinia.BLASTP.tab.gz

# 1. Getting data

curl -O https://biodataprog.github.io/2018_programming-intro/data/Ecoli-vs-Yersinia.BLASTP.tab.gz
du -h Ecoli-vs-Yersinia.BLASTP.tab.gz

# 2. Compressing and uncompressing

gunzip Ecoli-vs-Yersinia.BLASTP.tab.gz
du -h Ecoli-vs-Yersinia.BLASTP.tab

# 3. Counting and viewing

head -n 25 Ecoli-vs-Yersinia.BLASTP.tab
tail -n 3 Ecoli-vs-Yersinia.BLASTP.tab
wc -l Ecoli-vs-Yersinia.BLASTP.tab

# 4. Sorting

curl -O https://biodataprog.github.io/2018_programming-intro/data/Nc3H.expr.tab
(head -n 1 Nc3H.expr.tab && tail -n +2 Nc3H.expr.tab | sort -nrk 6) > Nc20H.expr.sorted.tab
head -n 10 Nc20H.expr.sorted.tab

# 5. Finding and Counting

grep -c "  CDS  " D_mel.63B12.gbk # number of CDS features
awk '$3 > 99.99 {print $1,$3}' Ecoli-vs-Yersinia.BLASTP.tab | wc -l
# or cut -f3 Ecoli-vs-Yersinia.BLASTP.tab | grep -c "100\.0"
awk '$3 >= 90 {print $1,$3}' Ecoli-vs-Yersinia.BLASTP.tab | wc -l

# 6. Sort and Uniq

curl -O https://biodataprog.github.io/2018_programming-intro/data/codon_table.txt
cut -f3 codon_table.txt | uniq -c
