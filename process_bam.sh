---
title: "process_bam.sh"
author: "Jorge A. Ruiz-Arocho"
date: "2/5/2020"
output: html_document
---

#!/bin/bash

# This is where our output sam files are oing to be converted into binary format (bam) 
# Then, we are going to sort the bam files, remove the PCR duplicates, and index item

# First, let's convert sam to bam; then we sort

for f in ${output}/BWA/${mypop}*.sam

do

  out=${f/.sam/}
  sambamba-0.7.1-linux-static view -S --format=bam ${f} -o ${out}.bam
  samtools sort ${out}.bam -o ${out}.sorted.bam
  
done

# Now let's remove the PCR duplicates from our bam files:

for file in ${output}/BWA/${mypop}*.sorted.bam

do

  f=${file/.sorted.bam/}
  sambamba-0.7.1-linux-static markdup -r -t 1 ${file} ${f}.sorted.rmup.bam
  
done

# Now to finish, we'll index our files

for file in ${output}/BWA/${mypop}*.sorted.rmdup.bam

do

  samtools index ${file}

done