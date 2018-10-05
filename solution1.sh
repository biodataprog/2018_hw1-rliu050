#!/bin/bash

# code should go here to download file https://biodataprog.github.io/programming-intro/data/Ecoli-vs-Yersinia.BLASTP.tab.gz

# 1. Getting data

curl -OL https://biodataprog.github.io/2018_programming-intro/data/Ecoli-vs-Yersinia.BLASTP.tab.gz
du -h Ecoli-vs-Yersinia.BLASTP.tab.gz

# 2. Compressing and uncompressing

gunzip Ecoli-vs-Yersinia.BLASTP.tab.gz
du -h Ecoli-vs-Yersinia.BLASTP.tab

# 3. Counting and viewing

head -n 25 Ecoli-vs-Yersinia.BLASTP.tab
tail -n 3 Ecoli-vs-Yersinia.BLASTP.tab
wc -l Ecoli-vs-Yersinia.BLASTP.tab

# 4. Sorting

curl -OL https://biodataprog.github.io/2018_programming-intro/data/Nc3H.expr.tab
(head -n 1 Nc3H.expr.tab && tail -n +2 Nc3H.expr.tab | sort -nrk 6) > Nc20H.expr.sorted.tab
head -n 10 Nc20H.expr.sorted.tab

# 5. Finding and Counting

grep -n "  CDS  " D_mel.63B12.gbk
grep -c "  CDS  " D_mel.63B12.gbk

to be continued
