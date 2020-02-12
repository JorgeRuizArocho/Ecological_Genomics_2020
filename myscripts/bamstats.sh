---
title: "Untitled"
author: "Jorge A. Ruiz-Arocho"
date: "2/12/2020"
output: html_document
---

#!/bin/bash

#set repo

myrepo="/users/j/r/jruizaro/Ecological_Genomics_2020"

mypop="WA"

output="/data/project_data/RS_ExomeSeq/mapping"

# Lets create a header

echo "Num.reads R1 R2 Paired MateMapped Singletons MateMappedDiffChr" >${myrepo}/myresults/${mypop}.flagstats.txt

for file in ${output}/BWA/${mypop}*sorted.rmup.bam

    do
      f=${file/.sorted.rmup.bam/}
      name=`basename ${f}`
      echo ${name} >> ${myrepo}/myresults/${mypop}.names.txt
      samtools flagstat ${file} | awk 'NR>=6&&NR<=12 {print $1}' | column -x
    done >> ${myrepo}/myresults/${mypop}.flagstats.txt  

# Calculate depth of coverage from our bam files

for file in ${output}/BWA/${mypop}*sorted.rmup.bam

  do 
    samtools depth ${file} | awk '{sum+=$3} END {print sum/NR}'
  done >> ${myrepo}/myresults/${mypop}.coverage.txt
  
  

