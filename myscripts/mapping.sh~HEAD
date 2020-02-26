---
title: "mapping.sh"
author: "Jorge A. Ruiz-Arocho"
date: "2/5/2020"
output: html_document
---

#!/bin/bash

# This script will run mapping using BWA program

ref="/data/project_data/RS_ExomeSeq/ReferenceGenomes/Pabies1.0-genome_reduced.fa"

# Write a loop to match each individual within my population

for forward in ${input}*_R1.cl.pd.fq

do
  reverse=${forward/_R1.cl.pd.fq/_R2.cl.pd.fq}
  f=${forward/_R1.cl.pd.fq/}
  name=`basename ${f}`
  bwa mem -t 1 -M ${ref} ${forward} ${reverse} > ${output}/BWA/${name}.sam
done  

